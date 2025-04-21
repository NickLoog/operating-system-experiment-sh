use std::fs::{read_dir, File};
use std::io::{Result, Write};
use std::path::Path;

fn main() {
    println!("cargo:rerun-if-changed=src/linker.ld"); // 如果内核链接脚本变化，重新运行
    println!("cargo:rerun-if-changed=user/target/"); // 如果用户程序目录变化，重新运行

    insert_app_data().unwrap();
}

fn insert_app_data() -> Result<()> {
    // --- 配置 ---
    // 用户程序编译后的 .bin 文件存放目录的基础路径
    // 注意：这个路径是相对于项目根目录的
    let user_target_base = Path::new("user/target/riscv64gc-unknown-none-elf/release");
    // 生成的汇编文件的输出路径
    let generated_asm_path = Path::new("src/link_app.S");
    // --- 配置结束 ---

    let mut file = File::create(generated_asm_path)?; // 创建或覆盖 src/link_app.S

    // 查找所有 .bin 文件
    let mut apps: Vec<_> = read_dir(user_target_base)?
        .filter_map(|entry| {
            let entry = entry.ok()?;
            let path = entry.path();
            // 确保是文件且扩展名是 .bin
            if path.is_file() && path.extension().map_or(false, |ext| ext == "bin") {
                Some(path)
            } else {
                None
            }
        })
        .collect();

    // 按文件名排序，确保每次生成顺序一致
    apps.sort_by(|a, b| a.file_name().cmp(&b.file_name()));

    let app_count = apps.len();

    // --- 写入汇编文件头部和 _num_app 符号 ---
    writeln!(
        file,
        r#"
    .align 3
    .section .data
    .global _num_app
_num_app:
    .quad {}"#, // 写入应用程序数量
        app_count
    )?;

    // --- 写入每个应用程序的起始地址指针 ---
    for i in 0..app_count {
        writeln!(file, "    .quad app_{}_start", i)?;
    }
    // 写入最后一个应用程序的结束地址指针 (用于计算最后一个应用的大小)
    if app_count > 0 { // 避免 app_count 为 0 时索引越界
        writeln!(file, "    .quad app_{}_end", app_count - 1)?;
    } else {
         // 如果没有应用，可以写入一个0或者起始地址自身，避免链接错误
         // 但理论上 app_count > 0
         writeln!(file, "    .quad 0")?; // 或者其他合适的值
    }


    // --- 写入每个应用程序的二进制数据 (.incbin) ---
    for (idx, app_path) in apps.iter().enumerate() {
        // 让 Cargo 知道如果这个 .bin 文件变了，需要重新运行 build.rs
        println!("cargo:rerun-if-changed={}", app_path.display());

        writeln!(
            file,
            r#"
    .section .data
    .global app_{idx}_start
    .global app_{idx}_end
    .align 3 # 8字节对齐
app_{idx}_start:"#,
            idx = idx
        )?;

        // 使用 .incbin 包含二进制文件内容
        // 使用 canonicalize 获取绝对路径，避免相对路径问题
        writeln!(
            file,
            r#"    .incbin "{}""#,
            app_path.canonicalize()?.display()
        )?;

        writeln!(
            file,
            r#"app_{idx}_end:"#,
            idx = idx
        )?;
    }
    // --- 汇编文件写入结束 ---

    Ok(())
}