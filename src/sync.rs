// --- 保留这个版本 ---
use core::cell::UnsafeCell; // 确保 use 语句在文件顶部

pub struct UPSafeCell<T> {
    inner: UnsafeCell<T>,
}

unsafe impl<T> Sync for UPSafeCell<T> {}

impl<T> UPSafeCell<T> {
    /// Creates a new UPSafeCell.
    /// # Safety
    /// Caller must ensure this is only used in a single-threaded context
    /// or that access is otherwise synchronized.
    pub unsafe fn new(value: T) -> Self {
        Self { inner: UnsafeCell::new(value) }
    }

    /// Get a mutable reference to the inner data.
    ///
    /// # Safety
    /// Caller must ensure mutual exclusion. This violates Rust's borrowing
    /// rules if not handled carefully.
    pub fn exclusive_access(&self) -> &mut T {
        unsafe { &mut *self.inner.get() }
    }
}
// --- 确保文件中没有其他 UPSafeCell 定义或 impl 块 ---