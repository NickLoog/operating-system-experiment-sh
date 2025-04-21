#![no_std]
#![feature(linkage)]
// #![feature(panic_info_message)] // Feature is stable
// #![feature(alloc_error_handler)] // Uncomment if you use alloc

#[macro_use]
pub mod console;
mod syscall;
// mod lang_items;

use core::fmt::Display; // Import Display trait
use syscall::{sys_exit, sys_write};

pub fn write(fd: usize, buf: &[u8]) -> isize {
    sys_write(fd, buf)
}

pub fn exit(exit_code: i32) -> ! {
    sys_exit(exit_code);
    loop {}
}

#[linkage = "weak"]
#[no_mangle]
fn main() -> i32 {
    panic!("Cannot find main!");
}

#[no_mangle]
#[link_section = ".text.entry"]
pub extern "C" fn _start() -> ! {
    extern "C" {
        fn sbss();
        fn ebss();
    }
    (sbss as usize..ebss as usize).for_each(|a| {
        unsafe { (a as *mut u8).write_volatile(0) }
    });
    exit(main());
}

// Updated panic handler for Nightly (Attempt 4)
#[panic_handler]
fn panic_handler(info: &core::panic::PanicInfo) -> ! {
    // Print location if available
    if let Some(location) = info.location() {
        print!(
            "Panicked at {}:{} ",
            location.file(),
            location.line()
        );
    } else {
        print!("Panicked: ");
    }

    // Attempt to print the message directly, assuming PanicMessage might implement Display
    // or can be handled by println! macro.
    // We get the message object first.
    let message = info.message();

    // Try printing the message object.
    // If PanicMessage doesn't implement Display, this might fail,
    // but let's see what error it gives.
    println!("{}", message);


    // Exit with a non-zero code indicating error
    exit(-1);
}