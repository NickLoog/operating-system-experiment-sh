# 启用 .rept 等宏指令
.altmacro

# 宏：保存通用寄存器 xn 到 sp + n*8 的位置
.macro SAVE_GP n
    sd x\n, \n*8(sp)
.endm

# 宏：从 sp + n*8 的位置加载通用寄存器 xn
.macro LOAD_GP n
    ld x\n, \n*8(sp)
.endm

    # RISC-V 要求 Trap 入口地址 4 字节对齐
    .align 2
    .globl __alltraps  # 导出 __alltraps 符号
    .globl __restore   
__alltraps:
    
    csrrw sp, sscratch, sp

    # 在内核栈上为 TrapContext 分配空间 (32 个通用寄存器 + sstatus + sepc = 34 个 usize)
    # 每个 usize 是 8 字节 (对于 RV64)
    addi sp, sp, -34*8

    # 保存通用寄存器 x1, x3, x5-x31 到内核栈上 TrapContext 的对应位置
    sd x1, 1*8(sp)
    # sd x2, 2*8(sp) # 跳过 sp(x2)，它的值 (user_sp) 在 sscratch 中，稍后保存
    sd x3, 3*8(sp)
   
    .set n, 5         # 从 x5 开始
    .rept 27          # 重复 27 次 (x5 到 x31)
        SAVE_GP %n    # 调用宏保存 xn
        .set n, n+1   # n 递增
    .endr

    csrr t0, sstatus  # 读取 sstatus 到 t0
    csrr t1, sepc     # 读取 sepc 到 t1
    sd t0, 32*8(sp)   # 保存 t0 (sstatus) 到偏移量 32*8
    sd t1, 33*8(sp)   # 保存 t1 (sepc) 到偏移量 33*8

    # 保存用户栈指针 sp(x2)
    # 从 sscratch 读取 user_sp (进入 Trap 前 sp 的值) 到 t2
    csrr t2, sscratch
    sd t2, 2*8(sp)    # 保存 t2 (user_sp) 到偏移量 2*8

    # 设置调用 trap_handler 函数的第一个参数 (a0)
    # a0 需要指向 TrapContext 的起始地址，也就是当前的内核栈指针 sp
    mv a0, sp

    # 调用 Rust 实现的 Trap 处理函数 trap_handler
    call trap_handler

# trap_handler 返回后会从这里继续执行
__restore:
    # trap_handler 的返回值（&mut TrapContext）按照调用约定放在 a0 中
    # a0 仍然指向 TrapContext 在内核栈上的地址
    # 将 sp 恢复指向 TrapContext 的基地址（理论上 trap_handler 返回时 a0=sp，此步可省略但更清晰）
    mv sp, a0

    # 从内核栈恢复 CSRs: sstatus, sepc, 以及 user_sp (恢复到 sscratch)
    ld t0, 32*8(sp)   # 加载 sstatus 到 t0
    ld t1, 33*8(sp)   # 加载 sepc 到 t1
    ld t2, 2*8(sp)    # 加载 user_sp 到 t2
    csrw sstatus, t0  # 将 t0 写回 sstatus
    csrw sepc, t1     # 将 t1 写回 sepc
    csrw sscratch, t2 # 将 t2 (user_sp) 写回 sscratch (非常重要!)

    # 从内核栈恢复通用寄存器 x1, x3, x5-x31
    ld x1, 1*8(sp)
    # ld x2, 2*8(sp) # 跳过 sp(x2)，它的值将在下面的 csrrw 中恢复
    ld x3, 3*8(sp)
    # ld x4, 4*8(sp) # 跳过 tp(x4)
    .set n, 5
    .rept 27
        LOAD_GP %n
        .set n, n+1
    .endr

    # 释放内核栈上为 TrapContext 分配的空间
    addi sp, sp, 34*8

    # 再次原子地交换 sp 和 sscratch
    # 执行前: sp 指向内核栈 (已释放 context), sscratch 指向用户栈 (user_sp)
    # 执行后: sp 指向用户栈 (user_sp), sscratch 指向内核栈 (kernel_sp)
    csrrw sp, sscratch, sp

    # 执行 S 态返回指令 (Supervisor Return)
    # CPU 会根据 sstatus.SPP 切换到 U 模式或 S 模式
    # CPU 会跳转到 sepc 指向的地址继续执行
    sret