#![no_std]
#![no_main]

#[macro_use]
extern crate user_lib;

#[no_mangle]
fn main() -> i32 {
    println!("Calculating powers (simple loop)...");
    let mut current: u64 = 2; // Start with 2
    let iterations = 10; // Number of power calculations

    for i in 1..=iterations {
        println!("2^{} = {}", i, current);
        // Simple multiplication, watch for overflow with large numbers
        // Use wrapping_mul for defined overflow behavior if needed
        current = current.saturating_mul(2); // Multiply by 2
        if current == 0 && i < iterations { // Check if overflow to max u64 happened early
             println!("Warning: Overflow occurred.");
             break;
        }
         // Simulate some delay or work if needed
         // for _ in 0..10000 {}
    }

    println!("Finished power calculations.");
    0 // Return 0 for success
}
