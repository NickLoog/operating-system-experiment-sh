#![no_std]
#![no_main]


// --- 模块声明 ---
mod console;
mod lang_items;
mod logging;
mod sbi;
mod batch;   // <-- 添加 batch 模块
mod sync;    // <-- 添加 sync 模块

// --- use 语句 ---
use core::arch::global_asm;
use log::*;

// --- 包含汇编文件 ---
global_asm!(include_str!("entry.asm"));    // 保留 entry.asm
global_asm!(include_str!("link_app.S")); // <-- 添加 link_app.S

// --- clear_bss 函数 (保持不变) ---
fn clear_bss() {
    extern "C" {
        fn sbss();
        fn ebss();
    }
    (sbss as usize..ebss as usize).for_each(|a| {
        unsafe { (a as *mut u8).write_volatile(0) }
    });
}

// --- 内核主函数 ---
#[no_mangle]
pub fn rust_main() -> ! {
    clear_bss();
    logging::init(); // 初始化日志

    // 你的日志测试 (可以保留)
    trace!("trace test");
    debug!("debug test");
    info!("info test");
    warn!("warn test");
    error!("error test");

    info!("Hello, world!"); // 内核启动信息

    batch::init();   // <-- 初始化应用程序管理器

    // batch::run_next_app(); // <-- 暂时不调用运行，下一节再取消注释

    // 修改结束方式: 使用 panic! 暂时停止执行
    panic!("Kernel initialized, batch initialized. Shutting down.");
    // sbi::shutdown() // <-- 注释或移除原来的 shutdown
}