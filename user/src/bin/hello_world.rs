#![no_std]
#![no_main] // Use the entry point _start from user_lib

#[macro_use]
extern crate user_lib; // Import the user library macros (like println!)

#[no_mangle] // Ensure the function name isn't mangled
fn main() -> i32 {
    println!("Hello, world!");
    0 // Return 0 indicating success
}