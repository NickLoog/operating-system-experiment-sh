// 应用程序内存布局相关常量
pub const APP_BASE_ADDRESS: usize = 0x80400000; // 第一个应用程序加载的基地址
pub const APP_SIZE_LIMIT: usize = 0x20000;     // 每个应用程序的大小限制 / 地址间隔

/// 最大应用程序数量
pub const MAX_APP_NUM: usize = 16;
/// 内核栈大小 (8 KiB)
pub const KERNEL_STACK_SIZE: usize = 0x2000; // 8KB
/// 每个应用内核栈的数量（暂时设为 1，因为我们还没有多线程）
pub const APP_KERNEL_STACK_COUNT: usize = 1; // 每个应用一个内核栈

// --- 系统调用号 ---
pub const SYSCALL_YIELD: usize = 124;
pub const SYSCALL_EXIT: usize = 93; // 确认这个值！通常是 93
// pub const SYSCALL_WRITE: usize = 64; // 如果需要，也在这里定义
// pub const SYSCALL_READ: usize = 63; // 如果需要