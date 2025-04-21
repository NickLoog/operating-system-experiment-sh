// 声明并导出同目录下的模块
mod fs;
mod process;

// 导入具体的系统调用实现函数
use fs::sys_write;
use process::sys_exit;

// 定义系统调用号常量 (需要与用户态库中的定义一致)
const SYSCALL_WRITE: usize = 64;
const SYSCALL_EXIT: usize = 93;

/// 系统调用分发函数
/// 由 trap_handler 调用
/// syscall_id: 来自 a7 寄存器，表示要调用哪个系统调用
/// args: 来自 a0-a2 寄存器，表示系统调用的参数
/// 返回值: isize 类型，将写入 a0 寄存器作为系统调用的返回值
pub fn syscall(syscall_id: usize, args: [usize; 3]) -> isize {
    match syscall_id {
        SYSCALL_WRITE => sys_write(args[0], args[1] as *const u8, args[2]),
        SYSCALL_EXIT => sys_exit(args[0] as i32), // sys_exit 不会返回 isize
        _ => {
            // 遇到不支持的系统调用号
            log::error!("Unsupported syscall_id: {}", syscall_id);
            -1 // 返回一个错误码，例如 -ENOSYS (Function not implemented)
        }
    }
}