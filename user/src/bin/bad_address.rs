#![no_std]
#![no_main]

#[macro_use]
extern crate user_lib;

#[no_mangle]
fn main() -> i32 {
    println!("Attempting to access memory address: 0xdeadbeef");
    // This address is likely invalid and should trigger a page fault
    // which the kernel (in later chapters) should handle.
    unsafe {
        // Write to a potentially invalid memory location
        *(0xdeadbeef as *mut u8) = 42;
    }
    // If the kernel handles the fault correctly (e.g., terminates the app),
    // this line should not be reached.
    println!("Error: Access to 0xdeadbeef did not cause termination!");
    -1 // Return non-zero code indicating failure/unexpected behavior
}