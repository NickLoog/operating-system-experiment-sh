#![allow(unused)] // 允许未使用代码，避免因注释掉 info 产生的警告

use crate::config::{APP_BASE_ADDRESS, APP_SIZE_LIMIT};
use core::arch::asm;
// use log::info; // 注释掉 log::info
use crate::println; // 确保 console 模块或 lib.rs 导出了 println!

// 从 link_app.S 获取应用程序数量
fn get_num_app() -> usize {
    extern "C" { fn _num_app(); }
    unsafe { (_num_app as usize as *const usize).read_volatile() }
}

// 计算第 app_id 个应用程序应该加载到的基地址
fn get_base_i(app_id: usize) -> usize {
    APP_BASE_ADDRESS + app_id * APP_SIZE_LIMIT
}

/// 将链接器嵌入内核的应用程序二进制码加载到它们各自的内存区域
pub fn load_apps() {


    extern "C" {
        fn _num_app(); // 指向应用程序数量变量的指针
    }
    // 获取应用程序数量和起始地址数组
    let num_app_ptr = _num_app as usize as *const usize;
    let num_app = get_num_app();
    println!("[loader] Number of apps = {}", num_app); // 使用 println 替代 info!

    // num_app_ptr + 1 指向 app_start 数组的第一个元素 (app_0_start)
    // 数组包含 num_app 个应用的起始地址，以及最后一个应用的结束地址，所以总共有 num_app + 1 个地址
    let app_start = unsafe { core::slice::from_raw_parts(num_app_ptr.add(1), num_app + 1) };

    // 清除指令缓存，确保加载的代码能被正确执行
    unsafe {
        asm!("fence.i");
    }

    // 遍历所有应用程序并加载
    for i in 0..num_app {
        let base_i = get_base_i(i); // 计算目标加载地址
        println!("[loader] Loading app_{} to address {:#x}", i, base_i); // 使用 println 替代 info!

        // 1. 清理目标内存区域 (从 base_i 到 base_i + APP_SIZE_LIMIT)
        (base_i..base_i + APP_SIZE_LIMIT).for_each(|addr| unsafe {
            (addr as *mut u8).write_volatile(0)
        });

        // 2. 计算源数据切片 (来自 link_app.S 嵌入的数据)
        let src = unsafe {
            core::slice::from_raw_parts(app_start[i] as *const u8, app_start[i + 1] - app_start[i])
        };
        println!("[loader]   App size: {} bytes", src.len()); // 使用 println 替代 info!

        // 3. 计算目标内存区域的切片
        let dst = unsafe { core::slice::from_raw_parts_mut(base_i as *mut u8, src.len()) };

        // 4. 从源切片 (内核 .data 段) 复制到目标切片 (应用程序内存区域)
        dst.copy_from_slice(src);
    }
    // --- 新增：确认函数正常结束 ---
    println!("[loader] load_apps finished.");
    // --- 新增结束 ---
}