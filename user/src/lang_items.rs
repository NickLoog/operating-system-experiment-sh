use core::panic::PanicInfo;
use crate::println;
use crate::exit;

#[panic_handler]
fn panic(info: &PanicInfo) -> ! {
    if let Some(location) = info.location() {
        println!("[user] Panicked at {}:{} {}",
                 location.file(),
                 location.line(),
                 info.message().unwrap_or(&format_args!("")));
    } else {
        println!("[user] Panicked: {}", info.message().unwrap_or(&format_args!("")));
    }
    exit(-1);
    loop {}
}