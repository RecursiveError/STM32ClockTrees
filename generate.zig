const std = @import("std");

const ClockTree = @import("src/clocktree.zig");
const Tree = ClockTree.Tree;
const Element = ClockTree.Element;
const Sources = ClockTree.Sources;
const Output = ClockTree.Output;
const Input = ClockTree.Input;
const ReferenceValue = ClockTree.ReferenceValue;

pub fn main() !void {
    var out_buffer: [50]u8 = undefined;
    var json_dir = try std.fs.cwd().openDir("out-json", .{ .iterate = true });
    var iter = json_dir.iterate();
    while (true) {
        const file = try iter.next();
        if (file) |entry| {
            switch (entry.kind) {
                .file => {
                    const name = entry.name;
                    const out_name = std.fmt.bufPrint(&out_buffer, "out-zig/{s}.zig", .{name[0..(name.len - 5)]}) catch continue;
                    const json_file = json_dir.openFile(name, .{}) catch continue;
                    create_files(json_file, out_name) catch |err| {
                        std.log.info("Fail to create {s} Error: {any}", .{ name, err });
                    };
                    json_file.close();
                },
                else => {},
            }
            continue;
        }
        break;
    }
}

fn create_files(json_file: std.fs.File, out_name: []const u8) !void {
    var arena_state = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena_state.deinit();
    const arena = arena_state.allocator();
    const file_slice = json_file.readToEndAlloc(arena, 1023 * 1000) catch unreachable;

    const corrent_tree = try std.json.parseFromSlice(Tree, arena, file_slice, .{ .duplicate_field_behavior = .use_last });
    const tree = &corrent_tree.value;
    const zig_file = try std.fs.cwd().createFile(out_name, .{ .truncate = false });
    defer zig_file.close();
    _ = try zig_file.write("const std = @import(\"std\");\n\n\n");
    try create_configs(tree, zig_file.writer().any());
    try create_conf_struct(tree, zig_file.writer().any());
    try create_clock_struct(tree, zig_file.writer().any());
}

//========= config types =========
///create enum configs for each type in clocktree
fn create_configs(tree: *const Tree, writer: std.io.AnyWriter) !void {
    for (tree.element) |element| {
        switch (element.reference) {
            .NumberList => |list| {
                try create_list_config(&element, list, writer);
            },
            .Input => |_| {
                try create_mutiplexor_config(&element, writer);
            },
            .Number,
            => |values| {
                if (std.mem.eql(u8, "output", element.Elementtype)) {
                    continue;
                } else if (std.mem.eql(u8, "activeOutput", element.Elementtype)) {
                    continue;
                }
                try create_number_config(&element, values, writer);
            },
            else => {},
        }
    }
}

const ListMap = std.StaticStringMap([]const u8).initComptime(.{
    .{ "multiplicator", "MUL" },
    .{ "multiplicatorFrac", "MUL" },
    .{ "devisor", "DIV" },
    .{ "divisor", "DIV" },
});

fn create_list_config(element: *const Element, list: ClockTree.ReferenceNumberList, writer: std.io.AnyWriter) !void {
    const postfix = ListMap.get(element.Elementtype) orelse return error.InvalidListType;

    try writer.print(
        \\pub const {s}Conf = enum{{
        \\  const this = @This();
        \\
    , .{element.name});
    for (list.list) |number| {
        const aux: u32 = @intFromFloat(number);
        if (number == @as(f32, @floatFromInt(aux))) {
            try writer.print("{s}{d},\n", .{ postfix, number });
        } else {
            try writer.print("@\"{s}{d}\",\n", .{ postfix, number });
        }
    }

    try writer.print(
        \\pub fn get(comptime self: this) comptime_float {{
        \\  return switch(self) {{
        \\
    , .{});

    for (list.list) |number| {
        const aux: u32 = @intFromFloat(number);
        if (number == @as(f32, @floatFromInt(aux))) {
            try writer.print(".{s}{d} => {d},\n", .{ postfix, number, number });
        } else {
            try writer.print(".@\"{s}{d}\" => {d},\n", .{ postfix, number, number });
        }
    }

    try writer.print(
        \\}};
        \\}}
        \\}};
        \\
    , .{});
}

fn create_mutiplexor_config(element: *const Element, writer: std.io.AnyWriter) !void {
    try writer.print("pub const {s}Conf = enum{{\n", .{element.name});
    for (element.sources) |sources| {
        switch (sources) {
            .input => |input| {
                try writer.print("{s},\n", .{input.from});
            },
            else => {},
        }
    }
    try writer.print("}};\n", .{});
}

fn create_number_config(element: *const Element, number: ClockTree.ReferenceNumber, writer: std.io.AnyWriter) !void {
    const name = element.name;
    const max = number.max;
    const min = number.min;
    try writer.print(
        \\pub const {s}Conf = enum(comptime_int) {{
        \\    _,
        \\    pub fn get(num: {s}Conf) comptime_int {{
        \\        const val: comptime_int = @intFromEnum(num);
        \\        if (val < {d}) {{
        \\            @compileError("min value for {s} is {d}\n");
        \\        }} else if (val > {d}) {{
        \\            @compileError("min value for {s} is {d}\n");
        \\        }}
        \\        return val;
        \\    }}
        \\
        \\   pub fn max() comptime_int {{
        \\      return {d};
        \\   }}
        \\
        \\   pub fn min() comptime_int {{
        \\      return {d};
        \\  }}
        \\}};
        \\
    , .{ name, name, min, name, min, max, name, max, max, min });
}

//======= config struct ==========
///cretate the config struct
fn create_conf_struct(tree: *const Tree, writer: std.io.AnyWriter) !void {
    try writer.print("pub const Config = struct {{\n", .{});
    for (tree.element) |element| {
        const name = element.name;

        switch (element.reference) {
            .Number => |number| {
                if (std.mem.eql(u8, "output", element.Elementtype)) {
                    continue;
                } else if (std.mem.eql(u8, "activeOutput", element.Elementtype)) {
                    continue;
                }
                try writer.print("{s}: {s}Conf = @enumFromInt({d}),\n", .{ name, name, number.default });
            },
            .NumberList => |list| {
                const postfix = ListMap.get(element.Elementtype) orelse unreachable; //has already been verified in the configuration step
                const number = list.default;
                const aux: u32 = @intFromFloat(number);

                try writer.print("{s}: {s}Conf = ", .{ name, name });
                if (number == @as(f32, @floatFromInt(aux))) {
                    try writer.print(".{s}{d}", .{ postfix, number });
                } else {
                    try writer.print(".@\"{s}{d}\"", .{ postfix, number });
                }
                try writer.print(",\n", .{});
            },
            .Input => |input| {
                try writer.print("{s}: {s}Conf = .{s},\n", .{ name, name, input.DefaultInput });
            },
            else => {},
        }
    }

    try writer.print("}};\n\n", .{});
}

//======= Clock Struct ========

fn create_clock_struct(tree: *const Tree, writer: std.io.AnyWriter) !void {
    try writer.print(
        \\pub fn Clock(comptime conf: Config) type {{
        \\const ClockStruct = struct {{
        \\  const this = @This();
        \\
        \\
    , .{});

    try create_clock_types(tree, writer);
    try create_clock_instances(tree, writer);
    try create_clock_validate(tree, writer);

    try writer.print(
        \\}};
        \\ClockStruct.validate();
        \\return ClockStruct;
        \\}}
        \\
    , .{});
}

const TypeRef = *const fn (*const Element, std.io.AnyWriter) anyerror!void;
const TypeMap = std.StaticStringMap(TypeRef).initComptime(.{
    .{ "multiplicator", create_mul },
    .{ "multiplicatorFrac", create_mulfrac },
    .{ "devisor", create_div },
    .{ "divisor", create_div },
    .{ "multiplexor", create_multiplex },
    .{ "output", create_output },
    .{ "activeOutput", create_output },
    .{ "fixedSource", create_source },
    .{ "variedSource", create_source },
    .{ "fractional", create_source },
});
fn create_clock_types(tree: *const Tree, writer: std.io.AnyWriter) !void {
    for (tree.element) |element| {
        const create_method: TypeRef = TypeMap.get(element.Elementtype) orelse continue;
        try create_method(&element, writer);
    }
}

fn find_fist_input(sources: []const ClockTree.Sources) ![]const u8 {
    for (sources) |source| {
        switch (source) {
            .input => |input| {
                return input.from;
            },
            else => {},
        }
    }

    return error.NoInputFind;
}

fn create_mul(element: *const Element, writer: std.io.AnyWriter) anyerror!void {
    const name = element.name;
    const first_input = try find_fist_input(element.sources);
    switch (element.reference) {
        .NumberList => {
            try writer.print(
                \\const {s} = struct {{
                \\        value: {s}Conf,
                \\
                \\        pub fn get(self: *const {s}) comptime_int {{
                \\            if (!@hasDecl(this, "{s}_inst")) {{
                \\              @compileError("No Input {s} for {s}\n");
                \\            }}
                \\            const from_input: comptime_float = @floatFromInt(this.{s}_inst.get());
                \\            const multi: comptime_float = self.value.get();
                \\            return @intFromFloat((from_input * multi));
                \\        }}
                \\    }};
                \\
                \\
            , .{
                name,
                name,
                name,
                first_input,
                first_input,
                name,
                first_input,
            });
        },
        .Number => {
            try writer.print(
                \\const {s} = struct {{
                \\        value: {s}Conf,
                \\
                \\        pub fn get(self: *const {s}) comptime_int {{
                \\            if (!@hasDecl(this, "{s}_inst")) {{
                \\              @compileError("No Input {s} for {s}\n");
                \\            }}
                \\            const from_input: comptime_float = @floatFromInt(this.{s}_inst.get());
                \\            const multi = self.value.get();
                \\            return @intFromFloat(from_input * multi);
                \\        }}
                \\    }};
                \\
                \\
            , .{
                name,
                name,
                name,
                first_input,
                first_input,
                name,
                first_input,
            });
        },
        .FixedNumber => |num| {
            try writer.print(
                \\const {s} = struct {{
                \\
                \\        pub fn get(_:*const {s}) comptime_int {{
                \\            if (!@hasDecl(this, "{s}_inst")) {{
                \\              @compileError("No Input {s} for {s}\n");
                \\            }}
                \\            const from_input = this.{s}_inst.get();
                \\            const multi = {d};
                \\            return (from_input * multi);
                \\        }}
                \\    }};
                \\
                \\
            , .{
                name,
                name,
                first_input,
                first_input,
                name,
                first_input,
                num,
            });
        },
        else => {
            return error.InvalidMulRef;
        },
    }
}

const FracIds = struct {
    inputid: []const u8,
    fractid: []const u8,
};

fn to_lower(out: []u8, from: []const u8) []const u8 {
    const size: usize = @min(out.len, from.len);
    for (0..size) |index| {
        out[index] = std.ascii.toLower(from[index]);
    }
    return out[0..size];
}

fn find_fract(sources: []Sources) !FracIds {
    var buffer: [50]u8 = undefined;
    var fract: ?[]const u8 = null;
    var input: ?[]const u8 = null;
    var default: [2]Input = undefined;
    var def_index: usize = 0;
    for (sources) |source| {
        switch (source) {
            .input => |from| {
                const id = to_lower(&buffer, from.from);
                default[def_index] = from;
                def_index += 1;
                if (std.mem.indexOf(u8, id, "frac")) |_| {
                    fract = from.from;
                    continue;
                }
                input = from.from;
                if (def_index == 2) break;
            },
            else => {},
        }
    }

    if (def_index > 2) return error.InvalidInput;

    if (fract) |fractional| {
        if (input) |from| {
            return FracIds{
                .fractid = fractional,
                .inputid = from,
            };
        }
    }

    return FracIds{
        .fractid = default[1].from,
        .inputid = default[0].from,
    };
}
fn create_mulfrac(element: *const Element, writer: std.io.AnyWriter) anyerror!void {
    const name = element.name;
    const inputs = try find_fract(element.sources);
    switch (element.reference) {
        .NumberList => {
            try writer.print(
                \\const {s} = struct {{
                \\        value: {s}Conf,
                \\
                \\        pub fn get(self: *const {s}) comptime_int {{
                \\            if (!@hasDecl(this, "{s}_inst")) {{
                \\              @compileError("No Input {s} for {s}\n");
                \\            }}else if(!@hasDecl(this, "{s}_inst")){{
                \\               @compileError("No fractional  value: {s} for {s}\n");
                \\            }}
                \\            const from_input: comptime_float = @floatFromInt(this.{s}_inst.get());
                \\            const frac: comptime_float = @floatFromInt(this.{s}_inst.get());
                \\            const max_frac:comptime_float = @floatFromInt(this.{s}.max());
                \\            const multi: comptime_float = self.value.get();
                \\            return @intFromFloat((from_input * (multi + (frac/max_frac))));
                \\        }}
                \\    }};
                \\
                \\
            , .{
                name,
                name,
                name,
                inputs.inputid,
                inputs.inputid,
                name,
                inputs.fractid,
                inputs.fractid,
                name,
                inputs.inputid,
                inputs.fractid,
                inputs.fractid,
            });
        },
        .Number => {
            try writer.print(
                \\const {s} = struct {{
                \\        value: {s}Conf,
                \\
                \\        pub fn get(self: *const {s}) comptime_int {{
                \\            if (!@hasDecl(this, "{s}_inst")) {{
                \\              @compileError("No Input {s} for {s}\n");
                \\            }}else if(!@hasDecl(this, "{s}_inst")){{
                \\               @compileError("No fractional  value: {s} for {s}\n");
                \\            }}
                \\            const from_input: comptime_float = @floatFromInt(this.{s}_inst.get());
                \\            const frac: comptime_float = @floatFromInt(this.{s}_inst.get());
                \\            const max_frac:comptime_float = @floatFromInt(this.{s}.max());
                \\            const multi: comptime_float = self.value.get();
                \\            return @intFromFloat((from_input * (multi + (frac/max_frac))));
                \\        }}
                \\    }};
                \\
                \\
            , .{
                name,
                name,
                name,
                inputs.inputid,
                inputs.inputid,
                name,
                inputs.fractid,
                inputs.fractid,
                name,
                inputs.inputid,
                inputs.fractid,
                inputs.fractid,
            });
        },
        .FixedNumber => |num| {
            try writer.print(
                \\const {s} = struct {{
                \\
                \\        pub fn get(_:*const {s}) comptime_int {{
                \\            if (!@hasDecl(this, "{s}_inst")) {{
                \\              @compileError("No Input {s} for {s}\n");
                \\            }}else if(!@hasDecl(this, "{s}_inst")){{
                \\               @compileError("No fractional  value: {s} for {s}\n");
                \\            }}
                \\            const from_input = this.{s}_inst.get();
                \\            const frac: comptime_float = @floatFromInt(this.{s}_inst.get());
                \\            const max_frac:comptime_float = @floatFromInt(this.{s}.max());
                \\            const multi: comptime_float = {d};
                \\            return @intFromFloat((from_input * (multi + (frac/max_frac))));
                \\        }}
                \\    }};
                \\
                \\
            , .{
                name,
                name,
                inputs.inputid,
                inputs.inputid,
                name,
                inputs.fractid,
                inputs.fractid,
                name,
                inputs.inputid,
                inputs.fractid,
                inputs.fractid,
                num,
            });
        },
        else => {
            return error.InvalidMulRef;
        },
    }
}

fn create_div(element: *const Element, writer: std.io.AnyWriter) anyerror!void {
    const name = element.name;
    const first_input = try find_fist_input(element.sources);
    switch (element.reference) {
        .NumberList => {
            try writer.print(
                \\const {s} = struct {{
                \\        value: {s}Conf,
                \\
                \\        pub fn get(self: *const {s}) comptime_int {{
                \\            if (!@hasDecl(this, "{s}_inst")) {{
                \\              @compileError("No Input {s} for {s}\n");
                \\            }}
                \\            const from_input: comptime_float = @floatFromInt(this.{s}_inst.get());
                \\            const div: comptime_float = self.value.get();
                \\            return @intFromFloat((from_input / div));
                \\        }}
                \\    }};
                \\
                \\
            , .{
                name,
                name,
                name,
                first_input,
                first_input,
                name,
                first_input,
            });
        },
        .Number => {
            try writer.print(
                \\const {s} = struct {{
                \\        value: {s}Conf,
                \\
                \\        pub fn get(self: *const {s}) comptime_int {{
                \\            if (!@hasDecl(this, "{s}_inst")) {{
                \\              @compileError("No Input {s} for {s}\n");
                \\            }}
                \\            const from_input: comptime_float = @floatFromInt(this.{s}_inst.get());
                \\            const div = self.value.get();
                \\            return @intFromFloat(from_input / div);
                \\        }}
                \\    }};
                \\
                \\
            , .{
                name,
                name,
                name,
                first_input,
                first_input,
                name,
                first_input,
            });
        },
        .FixedNumber => |num| {
            try writer.print(
                \\const {s} = struct {{
                \\
                \\        pub fn get(_:*const {s}) comptime_int {{
                \\            if (!@hasDecl(this, "{s}_inst")) {{
                \\              @compileError("No Input {s} for {s}\n");
                \\            }}
                \\            const from_input = this.{s}_inst.get();
                \\            const div = {d};
                \\            return (from_input / div);
                \\        }}
                \\    }};
                \\
                \\
            , .{
                name,
                name,
                first_input,
                first_input,
                name,
                first_input,
                num,
            });
        },
        else => {
            return error.InvalidMulRef;
        },
    }
}

fn create_multiplex(element: *const Element, writer: std.io.AnyWriter) anyerror!void {
    const name = element.name;
    try writer.print(
        \\const {s} = struct {{
        \\  value: {s}Conf,
        \\  pub fn get(comptime self: {s}) comptime_int {{
        \\      return switch(self.value) {{
        \\
    , .{ name, name, name });

    for (element.sources) |source| {
        switch (source) {
            .input => |input| {
                try writer.print(".{s} => {s}_inst.get(),\n ", .{ input.from, input.from });
            },
            else => {},
        }
    }

    try writer.print(
        \\      }};
        \\   }}
        \\}};
        \\
    , .{});
}

fn create_output(element: *const Element, writer: std.io.AnyWriter) anyerror!void {
    const name = element.name;
    const input_id = try find_fist_input(element.sources);
    switch (element.reference) {
        .Number => |num| {
            try writer.print(
                \\const {s} = struct {{
                \\  pub fn get(_:*const {s}) comptime_int {{
                \\      const from_input = {s}_inst.get();
                \\      if(from_input < {d}){{
                \\          @compileError(std.fmt.comptimePrint("Underflow clock from {s} on {s} | recive {s} min {d}\n", .{{from_input}}));
                \\      }}else if(from_input > {d}){{
                \\          
                \\          @compileError(std.fmt.comptimePrint("OverFlow clock from {s} on {s} | recive {s} max {d}\n", .{{from_input}}));
                \\      }}
                \\      return from_input;
                \\  }}
                \\}};
                \\
            , .{
                name,
                name,
                input_id,
                num.min,
                input_id,
                name,
                "{d}",
                num.min,
                num.max,
                input_id,
                name,
                "{d}",
                num.max,
            });
        },
        else => {
            try writer.print(
                \\const {s} = struct{{
                \\  pub fn get(_:*const {s}) comptime_int{{
                \\      return {s}_inst.get();
                \\  }}
                \\}};
                \\
            , .{ name, name, input_id });
        },
    }
}

fn create_source(element: *const Element, writer: std.io.AnyWriter) anyerror!void {
    const name = element.name;
    switch (element.reference) {
        .Number => {
            try writer.print(
                \\const {s} = struct {{
                \\  value: {s}Conf,
                \\  pub fn get(comptime self: {s}) comptime_int {{ 
                \\      return self.value.get(); 
                \\  }}
                \\}};
                \\
            , .{ name, name, name });
        },
        .FixedNumber => |num| {
            try writer.print(
                \\const {s} = struct {{
                \\  pub fn get(_:*const {s}) comptime_int {{ 
                \\      return {d}; 
                \\  }}
                \\}};
                \\
            , .{ name, name, num });
        },
        else => {},
    }
}

const FixedFormat = "{s}const {s}_inst = {s}{{}};\n";
fn create_clock_instances(tree: *const Tree, writer: std.io.AnyWriter) !void {
    for (tree.element) |element| {
        const name = element.name;
        const prefix = if (std.mem.indexOf(u8, element.Elementtype, "utput")) |_| "pub " else "";
        switch (element.sources[0]) {
            .condition => continue,
            else => {},
        }

        switch (element.reference) {
            .Input, .Number, .NumberList => {
                if (std.mem.eql(u8, "output", element.Elementtype)) {
                    try writer.print(FixedFormat, .{ prefix, name, name });
                    continue;
                } else if (std.mem.eql(u8, "activeOutput", element.Elementtype)) {
                    try writer.print(FixedFormat, .{ prefix, name, name });
                    continue;
                }
                try writer.print("{s}const {s}_inst = {s}{{ .value = conf.{s}}};\n", .{
                    prefix,
                    name,
                    name,
                    name,
                });
            },
            .FixedNumber => {
                try writer.print(FixedFormat, .{ prefix, name, name });
            },
            else => {},
        }
    }
}

fn create_clock_validate(tree: *const Tree, writer: std.io.AnyWriter) !void {
    try writer.print(
        \\
        \\ pub fn validate() void {{
        \\
    , .{});
    for (tree.element) |element| {
        const name = element.name;

        switch (element.sources[0]) {
            .condition => continue,
            else => {},
        }

        if (std.mem.eql(u8, element.Elementtype, "activeOutput")) {
            try writer.print(
                \\ _ = {s}_inst.get();
                \\
            , .{name});
        }
    }

    try writer.print("\n}}\n", .{});
}
