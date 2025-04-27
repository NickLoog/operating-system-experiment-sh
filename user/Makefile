# 用户程序目标平台
TARGET := riscv64gc-unknown-none-elf
# 基础加载地址 (与内核 config.rs 中 APP_BASE_ADDRESS 一致)
BASE_ADDRESS := 0x80400000
# 每个应用的大小限制/地址间隔 (与内核 config.rs 中 APP_SIZE_LIMIT 一致)
STEP := 0x20000
# 用户程序源代码目录
SRC_DIR := src/bin
# 编译输出目录
TARGET_DIR := target/$(TARGET)/release

# 获取所有用户程序源文件 (.rs)，并转换为程序名
APPS := $(patsubst $(SRC_DIR)/%.rs,%,$(wildcard $(SRC_DIR)/*.rs))

# 默认目标：构建所有应用程序
all: $(APPS)

# 为每个应用程序定义构建规则
# $(1): 应用程序名称 (如 hello_world)
# $(2): 应用程序 ID (从 0 开始)
define AppTarget
$(1): build_app_$(1)
.PHONY: build_app_$(1)
build_app_$(1):
	@echo Building application: $(1) with ID $(2)
	@cargo build --bin $(1) --release --target $(TARGET) \
		--config 'target.$(TARGET).rustflags = ["-Clink-arg=-Ttext=$(shell printf "0x%x" $(shell echo "$(BASE_ADDRESS) + $(2) * $(STEP)" | bc))"]'
	@echo Built $(TARGET_DIR)/$(1)
	# 注意：这里不再需要 rust-objcopy 生成 .bin 文件了，
	# 因为内核的 build.rs 会直接使用 target/riscv64gc-unknown-none-elf/release/ 目录下的 ELF 文件（如果 build.rs 做了相应修改）
	# 或者 build.rs 仍可查找 .bin 文件，那么这里就需要 objcopy
	# 为了与你之前的 os/build.rs 兼容，我们暂时保留 objcopy 生成 .bin
	@rust-objcopy --strip-all $(TARGET_DIR)/$(1) -O binary $(TARGET_DIR)/$(1).bin
	@echo Built $(TARGET_DIR)/$(1).bin

endef

# 遍历所有应用程序，为每个程序生成构建规则
# 使用 $(foreach) 和 $(eval) 动态创建目标
# $(eval $(call AppTarget, app_name, app_id))
$(foreach app, $(APPS), $(eval $(call AppTarget, $(app), $(shell echo $(APPS) | tr ' ' '\n' | grep -n $(app) | cut -d: -f1 | awk '{print $$1-1}'))))


# 清理目标
clean:
	@cargo clean

.PHONY: all clean $(APPS)
