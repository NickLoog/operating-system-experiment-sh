
    .align 3
    .section .data
    .global _num_app
_num_app:
    .quad 3
    .quad app_0_start
    .quad app_1_start
    .quad app_2_start
    .quad app_2_end

    .section .data
    .global app_0_start
    .global app_0_end
    .align 3 # 8字节对齐
app_0_start:
    .incbin "/home/nick/qemu-7.0.0/os/user/target/riscv64gc-unknown-none-elf/release/bad_address.bin"
app_0_end:

    .section .data
    .global app_1_start
    .global app_1_end
    .align 3 # 8字节对齐
app_1_start:
    .incbin "/home/nick/qemu-7.0.0/os/user/target/riscv64gc-unknown-none-elf/release/hello_world.bin"
app_1_end:

    .section .data
    .global app_2_start
    .global app_2_end
    .align 3 # 8字节对齐
app_2_start:
    .incbin "/home/nick/qemu-7.0.0/os/user/target/riscv64gc-unknown-none-elf/release/power.bin"
app_2_end:
