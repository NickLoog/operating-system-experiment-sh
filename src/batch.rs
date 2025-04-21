use crate::sync::UPSafeCell;
use lazy_static::*;
use log::info; // 确保引入了 log::info

// --- 常量 ---
const APP_BASE_ADDRESS: usize = 0x80400000; // 应用程序加载的起始地址
const APP_SIZE_LIMIT: usize = 0x20000;     // 应用程序区域的大小限制 (128KB)
const MAX_APP_NUM: usize = 16;             // 支持的最大应用程序数量
// --- 常量结束 ---

// 应用程序管理器结构
struct AppManager {
    num_app: usize,                               // 应用程序总数
    current_app: usize,                           // 当前准备加载/运行的应用 ID
    app_start: [usize; MAX_APP_NUM + 1],          // 存储每个应用的起始地址和最后一个应用的结束地址
}

// 使用 lazy_static 初始化全局唯一的 AppManager 实例
lazy_static! {
    static ref APP_MANAGER: UPSafeCell<AppManager> = unsafe {
        UPSafeCell::new({
            // 声明从 link_app.S 链接过来的外部符号
            extern "C" {
                fn _num_app(); // 指向应用程序数量和地址数组的符号
            }
            // _num_app 符号的地址就是那个usize数组的起始地址
            let num_app_ptr = _num_app as usize as *const usize;
            // 从该地址读取第一个usize，即应用程序数量
            let num_app = num_app_ptr.read_volatile();
            // 准备一个数组来存储地址
            let mut app_start: [usize; MAX_APP_NUM + 1] = [0; MAX_APP_NUM + 1];
            // 获取指向link_app.S中地址数组（跳过第一个元素num_app）的切片
            let app_start_raw: &[usize] =
                core::slice::from_raw_parts(num_app_ptr.add(1), num_app + 1);
            // 将地址从原始切片复制到我们的app_start数组中
            app_start[..=num_app].copy_from_slice(app_start_raw);

            // 创建 AppManager 实例
            AppManager {
                num_app,
                current_app: 0, // 初始时准备加载第 0 个应用
                app_start,
            }
        })
    };
}

// --- AppManager 方法实现 ---
impl AppManager {
    // 打印当前加载的应用信息
    pub fn print_app_info(&self) {
        info!("[kernel] num_app = {}", self.num_app); // 使用 info! 宏
        for i in 0..self.num_app {
            info!( // 使用 info! 宏
                "[kernel] app_{} [{:#x}, {:#x})",
                i,
                self.app_start[i],
                self.app_start[i + 1]
            );
        }
    }

    // 加载指定 ID 的应用程序到内存
    unsafe fn load_app(&self, app_id: usize) {
        if app_id >= self.num_app {
            panic!("All applications completed!");
        }
        info!("[kernel] Loading app_{}", app_id); // 使用 info! 宏

        // 清理指令缓存 (i-cache)
        core::arch::asm!("fence.i");

        // 清空应用程序将要加载到的内存区域
        core::slice::from_raw_parts_mut(APP_BASE_ADDRESS as *mut u8, APP_SIZE_LIMIT).fill(0);

        // 获取应用程序在内核镜像中的二进制数据切片
        let app_src = core::slice::from_raw_parts(
            self.app_start[app_id] as *const u8,                   // 起始地址
            self.app_start[app_id + 1] - self.app_start[app_id], // 长度
        );

        // 获取应用程序将要加载到的目标内存区域的切片
        let app_dst = core::slice::from_raw_parts_mut(APP_BASE_ADDRESS as *mut u8, app_src.len());

        // 将应用程序二进制数据复制到目标内存区域
        app_dst.copy_from_slice(app_src);
        // info!("[kernel] App_{} loaded.", app_id); // 可以加一句加载完成的日志
    }

    // 获取当前准备加载的应用 ID
    pub fn get_current_app(&self) -> usize {
        self.current_app
    }

    // 准备加载下一个应用
    pub fn move_to_next_app(&mut self) {
        self.current_app += 1;
    }
}
// --- AppManager 方法实现结束 ---


// --- 公共接口 ---

/// 初始化 AppManager，打印应用信息
pub fn init() {
    // 第一次访问 APP_MANAGER 时会触发 lazy_static 的初始化
    // 使用 exclusive_access 获取可变引用来调用方法
    APP_MANAGER.exclusive_access().print_app_info();
}

/// 加载并准备运行下一个应用程序
/// 注意：此函数目前只加载，真正的“运行”将在下一节实现
pub fn run_next_app() -> ! {
    let app_manager = APP_MANAGER.exclusive_access(); // 获取 AppManager 的可变引用
    let current_app_id = app_manager.get_current_app();

    // 加载当前应用
    unsafe {
        app_manager.load_app(current_app_id);
    }

    // 准备切换到下一个应用（为下次调用 run_next_app 做准备）
    app_manager.move_to_next_app();

    // TODO: 在下一节中，这里将不再是 panic!
    // 而是会设置 Trap 上下文并切换到用户态执行 app_id 对应的应用
    panic!("Batch: App loaded but execution not implemented yet!");
}
// --- 公共接口结束 ---