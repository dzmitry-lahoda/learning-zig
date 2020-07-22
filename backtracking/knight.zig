
const assert = @import("std").debug.assert;
const fs = @import("std").fs;
const std = @import("std");

var board = [8][8]u8 {
    [_]u8{0} ** 8,
    [_]u8{0} ** 8,
    [_]u8{0} ** 8,
    [_]u8{0} ** 8,
    [_]u8{0} ** 8,
    [_]u8{0} ** 8,
    [_]u8{0} ** 8,
    [_]u8{0} ** 8
};


var solution = [_]u32{0} ** 64;

fn intToString(int: u32, buf: []u8) ![]const u8 {
    return try std.fmt.bufPrint(buf, "{}", .{int});
}

pub fn solve() !void {
    var file = try fs.cwd().createFile("backtracking_knight.txt", .{});
    

    for (board) | row, i | {
        //std.fmt.formatIntBuf(buffer[0..], )
        for (row) | c, j | {
            var buf = [_]u8{0}**8;
            var wrote = try intToString(c, &buf);
            //try std.fmt.bufPrint(buf, "{}", .{c});
            var a_ = try file.write(wrote);
        }
        var a_ = try file.write("\n");
    }  
}

test "solution" {
    try solve();
    assert(1 == 1);
}