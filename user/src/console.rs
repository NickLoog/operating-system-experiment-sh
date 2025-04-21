// Note: This imports `write` from the root of the crate (lib.rs)
use crate::write;
use core::fmt::{self, Write};

const STDOUT: usize = 1;

struct Stdout;

impl Write for Stdout {
    fn write_str(&mut self, s: &str) -> fmt::Result {
        // Use the write function imported from lib.rs which calls sys_write
        write(STDOUT, s.as_bytes());
        Ok(())
    }
}

pub fn print(args: fmt::Arguments) {
    Stdout.write_fmt(args).unwrap();
}

#[macro_export]
macro_rules! print {
    ($fmt: literal $(, $($arg: tt)+)?) => {
        $crate::console::print(format_args!($fmt $(, $($arg)+)?));
    }
}

#[macro_export]
macro_rules! println {
    () => ($crate::print!("\n"));
    ($fmt: literal $(, $($arg: tt)+)?) => {
        // Use format_args! to format the string with a newline
        $crate::console::print(format_args!(concat!($fmt, "\n") $(, $($arg)+)?));
    }
}