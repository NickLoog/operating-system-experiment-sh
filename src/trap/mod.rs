use core::arch::global_asm;
use riscv::register::{
    scause::{self, Trap},
    stval,
    // stvec, // <-- 修改：移除 stvec 模块导入
};
// use riscv::register::stvec::Stvec; // <-- 修改：移除 Stvec 结构体导入
// use core::convert::TryFrom; // <-- 修改：移除 TryFrom 导入
use log::{error, info};

mod context;
use crate::syscall::syscall;
use crate::batch::run_next_app;

pub use context::TrapContext;

global_asm!(include_str!("trap.S"));

pub fn init() {
    extern "C" { fn __alltraps(); }
    let trap_addr = __alltraps as usize;

    // --- 修改：使用内联汇编直接写入 stvec 寄存器 ---
    unsafe {
        core::arch::asm!("csrw stvec, {}", in(reg) trap_addr);
    }
    info!("Trap initialized. Set stvec to {:#x}", trap_addr); // Log the address set

    // --- 移除所有之前的 stvec::write 尝试 ---
    // match Stvec::try_from(trap_addr) { ... }
    // unsafe { stvec::write(stvec::Stvec::from_bits(__alltraps as usize)); }
    // unsafe { stvec::write(stvec::Stvec { bits: __alltraps as usize }); }
    // unsafe { stvec::write(__alltraps as usize); }
}

// RISC-V Standard Exception Codes (subset)
const EXC_USER_ENV_CALL: usize = 8;
const EXC_ILLEGAL_INSTRUCTION: usize = 2;
const EXC_STORE_FAULT: usize = 7; // Store/AMO access fault
const EXC_STORE_PAGE_FAULT: usize = 15; // Store/AMO page fault

#[no_mangle]
pub fn trap_handler(cx: &mut TrapContext) -> &mut TrapContext {
    let scause = scause::read();
    let stval = stval::read();

    match scause.cause() {
        Trap::Exception(code) => {
            match code {
                EXC_USER_ENV_CALL => {
                    cx.sepc += 4;
                    cx.x[10] = syscall(cx.x[17], [cx.x[10], cx.x[11], cx.x[12]]) as usize;
                }
                EXC_STORE_FAULT | EXC_STORE_PAGE_FAULT => {
                    error!("[kernel] StoreFault/PageFault: code={}, addr={:#x}, sepc={:#x}", code, stval, cx.sepc);
                    run_next_app();
                }
                EXC_ILLEGAL_INSTRUCTION => {
                    error!("[kernel] IllegalInstruction: code={}, sepc={:#x}", code, cx.sepc);
                    run_next_app();
                }
                _ => {
                    panic!(
                        "Unhandled exception! Code: {}, stval: {:#x}, sepc: {:#x}",
                        code, stval, cx.sepc
                    );
                }
            }
        }
        // Trap::Interrupt(code) => { ... }
        _ => {
             panic!(
                "Unhandled trap cause (neither Exception nor Interrupt)! Cause: {:?}, stval: {:#x}, sepc: {:#x}",
                scause.cause(), stval, cx.sepc
            );
        }
    }
    cx
}