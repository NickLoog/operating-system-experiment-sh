#![no_std]
#![no_main]

// --- 模块声明 ---
mod batch;
mod console;
mod lang_items;
mod logging;
mod sbi;
mod sync;
mod syscall; // <-- 新增：声明 syscall 模块
mod trap;    // <-- 新增：声明 trap 模块

// --- Use 语句 ---
use core::arch::global_asm;
use log::*;
use riscv::register::sscratch; // <-- 新增：用于读写 sscratch 寄存器
use crate::batch::KERNEL_STACK; // <-- 新增：导入公共的内核栈实例

// --- 包含汇编文件 ---
global_asm!(include_str!("entry.asm"));    // 内核入口汇编
global_asm!(include_str!("link_app.S")); // 链接应用程序的汇编

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
    // 清理 .bss 段
    clear_bss();

    // --- 新增：设置 sscratch 寄存器 ---
    // 必须在内核初始化早期、启用 Trap 或运行任何可能触发 Trap 的代码之前完成
    // sscratch 用于在 U 模式执行时保存内核栈的指针
    unsafe {
        sscratch::write(KERNEL_STACK.get_sp());
    }
    // --- 设置 sscratch 结束 ---

    // 初始化日志系统
    logging::init();
    info!("Hello, world!"); // 打印内核启动信息

    // 初始化 Trap 处理机制 (设置 stvec 指向 __alltraps)
    trap::init();

    // 初始化批处理系统 (加载应用信息)
    batch::init();

    // 运行第一个应用程序 (会调用 __restore, 不会返回)
    batch::run_next_app();

    // 如果 run_next_app 意外返回，说明逻辑出错
    // panic!("Should not reach end of rust_main!");
}