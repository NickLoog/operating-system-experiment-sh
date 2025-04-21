use std::fs::{read_dir, File};
use std::io::{Result, Write};
use std::path::Path;

fn main() {
    println!("cargo:rerun-if-changed=src/linker.ld");
    println!("cargo:rerun-if-changed=../user/target/"); // Rerun if user apps change

    insert_app_data().unwrap();
}

fn insert_app_data() -> Result<()> {
    // --- Configuration ---
    // Base directory where user apps reside after building
    let user_target_base = Path::new("../user/target/riscv64gc-unknown-none-elf/release");
    // Output path for the generated assembly file
    let generated_asm_path = Path::new("src/link_app.S");
    // --- End Configuration ---

    let mut file = File::create(generated_asm_path)?; // Create the output assembly file

    // Find all .bin files in the user target directory
    let mut apps: Vec<_> = read_dir(user_target_base)?
        .filter_map(|entry| {
            let entry = entry.ok()?;
            let path = entry.path();
            if path.is_file() && path.extension().map_or(false, |ext| ext == "bin") {
                Some(path)
            } else {
                None
            }
        })
        .collect();

    // Sort apps alphabetically by filename for consistent ordering
    apps.sort_by(|a, b| a.file_name().cmp(&b.file_name()));

    let app_count = apps.len();

    // --- Write Assembly Header ---
    writeln!(
        file,
        r#"
    .align 3
    .section .data
    .global _num_app
_num_app:
    .quad {}"#, // Write the number of applications
        app_count
    )?;

    // --- Write App Start Addresses ---
    // Write pointers to the start of each app
    for i in 0..app_count {
        writeln!(file, "    .quad app_{}_start", i)?;
    }
    // Write pointer to the end of the last app (needed for size calculation)
    writeln!(file, "    .quad app_{}_end", app_count - 1)?; // Use last app's end

    // --- Write App Binary Data ---
    for (idx, app_path) in apps.iter().enumerate() {
        let app_name = app_path.file_stem().unwrap().to_str().unwrap(); // Get name like "hello_world"
        println!("cargo:rerun-if-changed={}", app_path.display()); // Rerun build if this app changes

        writeln!(
            file,
            r#"
    .section .data
    .global app_{idx}_start
    .global app_{idx}_end
    .align 3 # Align to 8 bytes (2^3) for safety
app_{idx}_start:"#,
            idx = idx
        )?;

        // Include the binary content
        writeln!(
            file,
            r#"    .incbin "{}""#,
            app_path.canonicalize()?.display() // Use canonicalized path
        )?;

        writeln!(
            file,
            r#"app_{idx}_end:"#,
            idx = idx
        )?;
    }
    // --- End Writing Assembly ---

    Ok(())
}
