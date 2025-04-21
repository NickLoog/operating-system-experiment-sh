use riscv::register::sstatus::{self, Sstatus, SPP};

#[repr(C)] // 保证内存布局与 C 兼容（汇编代码需要）
pub struct TrapContext {
    pub x: [usize; 32],   // 通用寄存器 x0-x31
    pub sstatus: Sstatus, // S 态状态寄存器
    pub sepc: usize,      // S 态异常程序计数器
}

impl TrapContext {
    /// 设置栈指针寄存器 (x2 = sp)
    pub fn set_sp(&mut self, sp: usize) { self.x[2] = sp; }

    /// 为启动应用程序初始化上下文
    pub fn app_init_context(entry: usize, sp: usize) -> Self {
        let mut sstatus = sstatus::read(); // 读取当前 sstatus
        // 设置 sret 后进入 U 模式 (User)
        sstatus.set_spp(SPP::User);
        let mut cx = Self {
            x: [0; 32],       // 将通用寄存器初始化为 0
            sstatus,          // 设置 sstatus
            sepc: entry,      // 设置异常返回地址为应用程序入口点
        };
        cx.set_sp(sp);        // 设置用户栈指针
        cx                    // 返回初始化后的上下文
    }
}