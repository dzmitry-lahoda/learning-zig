const std = @import("std");
const win32 = @import("win32").c;

//const qwe = @cImport(@cInclude("d:/zig/lib/zig/libc/include/any-windows-any/vadefs.h")); 
//const io = @cImport(@cInclude("d:/zig/lib/zig/libc/include/any-windows-any/stdio.h"));  
//const a1 = @cImport(@cInclude("d:/zig/lib/zig/libc/include/any-windows-any/winapifamily.h"));  
//const winsock2 = @cImport(@cInclude("d:/zig/lib/zig/libc/include/any-windows-any/winsock2.h")); 
//const wincon = @cImport(@cInclud("D:/zig/lib/zig/libc/include/any-windows-any/wincon.h"));
//extern fn MessageBoxA(hWnd: HWND, lpText: LPCSTR, lpCaption: LPCSTR, uType: UINT) c_int;
pub fn main() void {
    _ = win32.MessageBoxA(0, "hello", "title", 0);
     
    }