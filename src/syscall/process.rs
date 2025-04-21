use crate::batch::run_next_app; // 导入 run_next_app 函数
use log::info;

/// sys_exit 系统调用实现
/// exit_code: 应用程序的退出状态码
/// 返回值: ! 表示该函数永不返回
pub fn sys_exit(exit_code: i32) -> ! {
    info!("[kernel] Application exited with code {}", exit_code); // 记录退出信息
    // 直接加载并运行下一个应用程序
    run_next_app()
    // 注意: run_next_app 内部会处理所有应用都结束的情况，并调用 shutdown
}