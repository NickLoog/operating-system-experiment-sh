#![no_std]
#![no_main]

// --- 模块声明 ---
mod batch;
mod console;
mod lang_items;
mod logging;
mod sbi;
mod sync;
mod syscall;
mod trap;
mod config;
mod loader;
// <-- 新增：声明 task 模块


use core::arch::global_asm;
use riscv::register::sscratch;
use crate::batch::KERNEL_STACK; // KERNEL_STACK 可能还需要，暂时保留


// --- 包含汇编文件 ---
global_asm!(include_str!("entry.asm"));
global_asm!(include_str!("link_app.S"));

// --- clear_bss 函数 (保持不变) ---
fn clear_bss() {
    extern "C" { fn sbss(); fn ebss(); }
    (sbss as usize..ebss as usize).for_each(|a| {
        unsafe { (a as *mut u8).write_volatile(0) }
    });
}

// --- 内核主函数 ---
#[no_mangle]
pub fn rust_main() -> ! {
    clear_bss();
    unsafe { sscratch::write(KERNEL_STACK.get_sp()); }
    logging::init(); // 即使不用 log 宏，也可能需要初始化日志后端
    // info!("Logging initialized."); // 可以用 println! 替代
    println!("[kernel] Logging initialized.");
    trap::init();
    // info!("Trap initialized."); // 可以用 println! 替代
    println!("[kernel] Trap initialized.");

    loader::load_apps(); // 加载应用程序

    // --- 任务切换尚未实现 ---
    // 下一步将是创建任务控制块 (TCB)，初始化它们，
    // 并使用 TaskContext 和 __switch 实现任务调度逻辑。
    // 现在，内核仍然在加载后暂停。

    panic!("All the apps are loaded.Task switching not implemented.Kernal halt."); // 更新了 Panic 信息
}