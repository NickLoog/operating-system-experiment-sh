use crate::println; // <-- 新增：导入 println 宏 (如果 print! 不可用，尝试 println!)
// 或者 use crate::print; // 如果你的宏确实是 print!

const FD_STDOUT: usize = 1;

pub fn sys_write(fd: usize, buf: *const u8, len: usize) -> isize {
    match fd {
        FD_STDOUT => {
            let slice = unsafe { core::slice::from_raw_parts(buf, len) };
            let str_slice = core::str::from_utf8(slice).unwrap();
            // --- 使用导入的宏 ---
            // print!("{}", str_slice); // 如果导入的是 print
            println!("{}", str_slice); // 如果导入的是 println
            len as isize
        },
        _ => {
            log::error!("sys_write: Unsupported fd {}", fd);
            -1
        }
    }
}