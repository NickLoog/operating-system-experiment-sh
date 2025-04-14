#![allow(unused)]

// 新版SBI调用方式
#[inline(always)]
fn sbi_call(eid: usize, fid: usize, arg0: usize, arg1: usize, arg2: usize) -> (usize, usize) {
    let mut error;
    let mut value;
    unsafe {
        core::arch::asm!(
            "ecall",
            inlateout("x10") arg0 => error,
            inlateout("x11") arg1 => value,
            in("x12") arg2,
            in("x16") fid,
            in("x17") eid,
        );
    }
    (error, value)
}

// 传统遗留SBI调用（用于控制台输出等）
#[inline(always)]
fn sbi_call_legacy(which: usize, arg0: usize, arg1: usize, arg2: usize) -> usize {
    let mut ret;
    unsafe {
        core::arch::asm!(
            "ecall",
            inlateout("x10") arg0 => ret,
            in("x11") arg1,
            in("x12") arg2,
            in("x17") which,
        );
    }
    ret
}

// 控制台相关功能号
const SBI_CONSOLE_PUTCHAR: usize = 1;
const SBI_CONSOLE_GETCHAR: usize = 2;

// 系统重置扩展ID和功能号
const SBI_EXT_SRST: usize = 0x53525354; // "SRST"
const SBI_SRST_SHUTDOWN: usize = 0;
const SBI_SRST_COLD_REBOOT: usize = 1;
const SBI_SRST_WARM_REBOOT: usize = 2;

// 系统重置类型
const SBI_SRST_TYPE_SHUTDOWN: usize = 0;

pub fn console_putchar(c: usize) {
    sbi_call_legacy(SBI_CONSOLE_PUTCHAR, c, 0, 0);
}

pub fn console_getchar() -> usize {
    sbi_call_legacy(SBI_CONSOLE_GETCHAR, 0, 0, 0)
}

pub fn shutdown() -> ! {
    // 使用新的SBI v2.0.0 System Reset扩展调用关机
    sbi_call(SBI_EXT_SRST, SBI_SRST_SHUTDOWN, SBI_SRST_TYPE_SHUTDOWN, 0, 0);
    
    // 如果SBI调用返回，进入低功耗循环
    loop {
        unsafe {
            core::arch::asm!("wfi");
        }
    }
}