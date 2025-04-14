# 项目配置
TARGET := riscv64gc-unknown-none-elf
MODE := release
KERNEL_ELF := target/$(TARGET)/$(MODE)/os
KERNEL_BIN := $(KERNEL_ELF).bin
KERNEL_ENTRY_PA := 0x80200000

# 根据你的实际路径调整
BOOTLOADER := ../bootloader/rustsbi-qemu.bin

# 编译内核
kernel:
	cargo build --release

# 生成二进制文件
$(KERNEL_BIN): kernel
	rust-objcopy --binary-architecture=riscv64 $(KERNEL_ELF) --strip-all -O binary $(KERNEL_BIN)

# 运行QEMU
run: $(KERNEL_BIN) $(BOOTLOADER)
	qemu-system-riscv64 \
		-machine virt \
		-nographic \
		-bios $(BOOTLOADER) \
		-device loader,file=$(KERNEL_BIN),addr=$(KERNEL_ENTRY_PA)

# 带日志运行
run-trace: $(KERNEL_BIN) $(BOOTLOADER)
	LOG=TRACE make run

# 清理
clean:
	cargo clean

.PHONY: kernel run clean run-trace