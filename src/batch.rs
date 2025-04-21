use crate::sync::UPSafeCell;
use lazy_static::*;
use log::info;
use crate::trap::TrapContext;
use crate::sbi::shutdown;

const KERNEL_STACK_SIZE: usize = 4096 * 2;
const USER_STACK_SIZE: usize = 4096 * 2;
const MAX_APP_NUM: usize = 16;
const APP_BASE_ADDRESS: usize = 0x80400000;
const APP_SIZE_LIMIT: usize = 0x20000;

#[repr(align(4096))]
// --- 修改：添加 pub 使结构体公开 ---
pub struct KernelStack {
    data: [u8; KERNEL_STACK_SIZE],
}

#[repr(align(4096))]
struct UserStack {
    data: [u8; USER_STACK_SIZE],
}

// --- 修改：确保 KERNEL_STACK 是 pub static ---
pub static KERNEL_STACK: KernelStack = KernelStack { data: [0; KERNEL_STACK_SIZE] };
static USER_STACK: UserStack = UserStack { data: [0; USER_STACK_SIZE] };

impl KernelStack {
    /// 获取内核栈顶地址
    pub fn get_sp(&self) -> usize {
        self.data.as_ptr() as usize + KERNEL_STACK_SIZE
    }
    /// 将 Trap 上下文压入内核栈，并返回其在栈上的起始地址
    pub fn push_context(&self, cx: TrapContext) -> usize {
        let cx_ptr = (self.get_sp() - core::mem::size_of::<TrapContext>()) as *mut TrapContext;
        unsafe { *cx_ptr = cx; }
        cx_ptr as usize
    }
}

impl UserStack {
    fn get_sp(&self) -> usize {
        self.data.as_ptr() as usize + USER_STACK_SIZE
    }
}

struct AppManager {
    num_app: usize,
    current_app: usize,
    app_start: [usize; MAX_APP_NUM + 1],
}

lazy_static! {
    static ref APP_MANAGER: UPSafeCell<AppManager> = unsafe {
        UPSafeCell::new({
            extern "C" { fn _num_app(); }
            let num_app_ptr = _num_app as usize as *const usize;
            let num_app = num_app_ptr.read_volatile();
            let mut app_start: [usize; MAX_APP_NUM + 1] = [0; MAX_APP_NUM + 1];
            let app_start_raw: &[usize] =
                core::slice::from_raw_parts(num_app_ptr.add(1), num_app + 1);
            app_start[..=num_app].copy_from_slice(app_start_raw);
            AppManager {
                num_app,
                current_app: 0,
                app_start,
            }
        })
    };
}

impl AppManager {
    pub fn print_app_info(&self) {
        info!("[kernel] num_app = {}", self.num_app);
        for i in 0..self.num_app {
            info!(
                "[kernel] app_{} [{:#x}, {:#x})",
                i,
                self.app_start[i],
                self.app_start[i + 1]
            );
        }
     }

    unsafe fn load_app(&self, app_id: usize) {
        if app_id >= self.num_app {
            info!("All applications completed!");
            shutdown();
        }
        info!("[kernel] Loading app_{}", app_id);
        core::arch::asm!("fence.i");
        core::slice::from_raw_parts_mut(APP_BASE_ADDRESS as *mut u8, APP_SIZE_LIMIT).fill(0);
        let app_src = core::slice::from_raw_parts(
            self.app_start[app_id] as *const u8,
            self.app_start[app_id + 1] - self.app_start[app_id],
        );
        let app_dst = core::slice::from_raw_parts_mut(APP_BASE_ADDRESS as *mut u8, app_src.len());
        app_dst.copy_from_slice(app_src);
    }
    pub fn get_current_app(&self) -> usize { self.current_app }
    pub fn move_to_next_app(&mut self) { self.current_app += 1; }
}

pub fn init() {
    APP_MANAGER.exclusive_access().print_app_info();
}

pub fn run_next_app() -> ! {
    let mut app_manager = APP_MANAGER.exclusive_access(); // Keep mut
    let current_app = app_manager.get_current_app();
    unsafe {
        app_manager.load_app(current_app);
    }
    app_manager.move_to_next_app();
    // --- 修改：移除无效的 drop 调用 ---
    // drop(app_manager); // Guard drops automatically when scope ends

    extern "C" {
        fn __restore(cx_addr: usize);
    }
    unsafe {
        let trap_cx = TrapContext::app_init_context(
            APP_BASE_ADDRESS,
            USER_STACK.get_sp(),
        );
        let trap_cx_ptr = KERNEL_STACK.push_context(trap_cx);
        __restore(trap_cx_ptr);
    }

    panic!("Unreachable in batch::run_next_app!");
}