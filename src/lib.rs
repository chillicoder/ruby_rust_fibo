#[no_mangle]
pub extern fn fib(n: u32) -> u32 {
    if n <= 1 {
        n
    } else {
        fib(n-1) + fib(n-2)
    }
}
