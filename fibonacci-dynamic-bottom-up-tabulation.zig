const assert = @import("std").debug.assert;
const print = @import("std").debug.print;
var lookup = [_]u32{0} ** 256;
fn fib(n:u32) u32{
    lookup[0] = 0;
    lookup[1] = 1;
    var i:u32 = 0;
    if (n >= 2) {
       while (i <= n - 2): (i+=1){
            lookup[i+2] = lookup[i+1] + lookup[i];
        }
    }

    return lookup[n];
}

test "fibonacci" {
    assert(fib(1) == 1);
    assert(fib(2) == 1);
    assert(fib(3) == 2);
    assert(fib(4) == 3);
    assert(fib(5) == 5);
    assert(fib(6) == 8);
}