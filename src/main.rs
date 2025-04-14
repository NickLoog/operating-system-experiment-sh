#![no_std]
#![no_main]

mod console;
mod lang_items;
mod logging;
mod sbi;

use log::*;
use core::arch::global_asm;

global_asm!(include_str!("entry.asm"));

fn clear_bss() {
    extern "C" {
        fn sbss();
        fn ebss();
    }
    (sbss as usize..ebss as usize).for_each(|a| {
        unsafe { (a as *mut u8).write_volatile(0) }
    });
}

#[no_mangle]
pub fn rust_main() -> ! {
    clear_bss();
    logging::init();
    
    trace!("trace test");
    debug!("debug test");
    info!("info test");
    warn!("warn test");
    error!("error test");
    
    info!("Hello, world!");
    sbi::shutdown()
}