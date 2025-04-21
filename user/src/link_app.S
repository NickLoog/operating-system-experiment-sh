
    .align 3
    .section .data
    .global _num_app
_num_app:
    .quad 2
    .quad app_0_start
    .quad app_1_start
    .quad app_1_end

    .section .data
    .global app_0_start
    .global app_0_end
    .align 3 # Align to 8 bytes (2^3) for safety
app_0_start:
    .incbin "/home/nick/qemu-7.0.0/os/user/target/riscv64gc-unknown-none-elf/release/hello_world.bin"
app_0_end:

    .section .data
    .global app_1_start
    .global app_1_end
    .align 3 # Align to 8 bytes (2^3) for safety
app_1_start:
    .incbin "/home/nick/qemu-7.0.0/os/user/target/riscv64gc-unknown-none-elf/release/power.bin"
app_1_end:
