const std = @import("std");

pub fn main() anyerror!void {
    // var buffer: [std.mem.page_size]u8 = undefined;
    // var nlines = 0;

    // const stdout = std.io.getStdOut().writer();
    // _ = try stdout.writeAll("Hello");

    const s = [5:0]u8{ 'h', 'e', 0, 'l', 'o' };
    std.debug.print("{s}\n", .{s});
    std.debug.print("{d}\n", .{s.len});
    // const s = [_:0]u8{ 'h', 'e', 0, 'l', 'o' };
    // const s = "Hello";
    std.debug.print("{}\n", .{@TypeOf(s)});
    std.debug.print("{s}\n", .{s});
    std.debug.print("{d}\n", .{s.len});

    // std.debug.print("{d}\n", .{@sizeOf(@TypeOf(s))});
    // std.debug.print("{d}\n", .{@sizeOf(@TypeOf(s.*))});

    // const a: comptime_int = 3;
    // std.debug.print("{d}\n", .{@sizeOf(@TypeOf(a))});
    // const b: i64 = 3;
    // std.debug.print("{d}\n", .{@sizeOf(@TypeOf(b))});

    // var a = "hi";
    // std.debug.print("{}", .{@sizeOf(@TypeOf(a.*))});

    // var b = [_:0]u8{ 'h', 'e', 'e', 'l', 'o' };
    // b[b.len] = 'A';
    // const s = b[0..6 :0];
    // const s2 = b[0..6];
    // std.debug.print("{}\n", .{b[b.len]});
    // std.debug.print("{}\n", .{@sizeOf(@TypeOf(b))});
    // std.debug.print("{c}\n", .{s[1]});
    // std.debug.print("{c}\n", .{s[s.len - 1]});
    // std.debug.print("{}\n", .{b[b.len]});
    // std.debug.print("{c}\n", .{s2[1]});
    // std.debug.print("{}\n", .{s2[s2.len]});
    // std.debug.print("{s}\n", .{s2});
    // std.debug.print("{}\n", .{@TypeOf(s2)});
    // std.debug.print("{}\n", .{@sizeOf(@TypeOf(s2.*))});

    // var a = [_]u8{ 'h', 'e' };
    // std.debug.print("{s}\n", .{a});
    // std.debug.print("{}\n", .{@TypeOf(a)});

    // _ = std.mem.reverse(u8, &a);
    // std.debug.print("{s}\n", .{a});
    // std.debug.print("{}\n", .{@TypeOf(a)});

    const a = 'a';
    std.debug.print("{d}\n", .{a});
    std.debug.print("{}\n", .{@TypeOf(a)});

    // const stdout = std.io.getStdOut().writer();
    // try stdout.writeAll(a);

    // zshで改行ないと%が表示される
    // File構造体大事
    // writer, reader大事
    // [5:0]とかでヌルターミネートを明示
    // 文字列は自動的にヌルターミネート（終端に0）
    // Zigで文字列の長さ測る場合、途中にヌルがあっても止まらない
    // Zigで文字列の長さ測る場合、最後のヌルは数えない
    // @TypeOfで型取得
    // @sizeOfは型を受け取り、大きさ返す
    // @sizeOfに文字列渡すと、終端ヌル文字も数えてくれる
    // *const [2:0]u8をデリファレンスすると、[2:0]u8
    // *const [2:0]u8のptrは、[*]const u8
    // varで宣言した文字列は、ポインタを変えることはできる。でも持ってる値はconst
    // 文字列の型のサイズを測ると、ポインタサイズの8が出てくる
    // 文字列のデリファレンスのサイズを測ると、ヌル文字を含めた数になる
    // sizeOfは実行時に評価
    // comptime_intは実行時に許可されないので、sizeOfは0
    // Sentinel で終了するスライスは、要素はlenインデックスにアクセスできます。
    // Zig は、ヌル終端文字を上書きする代入を無視する
    // Zigでの文字列リテラルはヌルターミネートされる
    // Zig的には、[]const u8 や []u8だったら文字列扱い（ヌルターミネートされている必要性はない）
    // 文字列リテラルが[]const u8になるってだけ
    // スライスには、[0..]か&
    // u8はconstだとcomptime_intになる→char型としても扱える
    // 文字列リテラル
    // comptime変数
    // トップレベルvar
    // 構造体レベルvar、
    // const宣言は、グローバル定数データセクションに格納
    // 関数レベルのvar変数は関数のスタックフレームに格納, 関数が戻ると、関数のスタックフレーム内の変数へのポインタは無効
    // libcとリンクしているときは、std.heap.c_allocator
    // std.heap.GeneralPurposeAllocator。このアロケーターはメモリ リークを検出する機能を提供しますが、自動的に何も解放しません。
    // 関数からポインタを返すのは、アロケータを使う
    // 関数の引数は変更できない
    // 関数に型を渡すことでジェネリクスを実現
    // 関数の引数にcomptimeを指定して、コンパイル時にチェックできるようにする（いいね）
    //      fn discount(price: f32, comptime percent: f32) f32 {
    //           if (percent > 100) @compileError("Are you nut?");
    //           return price - (price * percent / 100);
    //      }
}
