use core::panic::PanicInfo;
use crate::println;

#[panic_handler]
fn panic(info: &PanicInfo) -> ! {
    println!("[kernel] Panicked: ");
    
    if let Some(location) = info.location() {
        println!(
            "at {}:{}",
            location.file(),
            location.line()
        );
    }
    
    println!("{}", info.message());
    
    // 直接进入无限循环，而不是调用 shutdown
    loop {}
}