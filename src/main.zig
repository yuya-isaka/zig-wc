const std = @import("std");

pub fn main() anyerror!void {
    // var buffer: [std.mem.page_size]u8 = undefined;
    // var nlines = 0;

    // const stdout = std.io.getStdOut().writer();
    // _ = try stdout.writeAll("Hello");

    // const s = [5:0]u8{ 'h', 'e', 0, 'l', 'o' };
    // std.debug.print("{s}\n", .{s});
    // std.debug.print("{d}\n", .{s.len});
    // const s = [_:0]u8{ 'h', 'e', 0, 'l', 'o' };
    // const s = "Hello";
    // std.debug.print("{}\n", .{@TypeOf(s)});
    // std.debug.print("{s}\n", .{s});
    // std.debug.print("{d}\n", .{s.len});

    // std.debug.print("{d}\n", .{@sizeOf(@TypeOf(s))});
    // std.debug.print("{d}\n", .{@sizeOf(@TypeOf(s.*))});

    // const a: comptime_int = 3;
    // std.debug.print("{d}\n", .{@sizeOf(@TypeOf(a))});
    // const b: i64 = 3;
    // std.debug.print("{d}\n", .{@sizeOf(@TypeOf(b))});

    var a = "hi";
    a = "he";
    std.debug.print("{}", .{@TypeOf(a.*)});

    const stdout = std.io.getStdOut().writer();
    try stdout.writeAll(a);
}
