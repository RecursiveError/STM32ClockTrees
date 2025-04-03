const std = @import("std");

const ClockTree = @import("src/clocktree.zig");
const Tree = ClockTree.Tree;
const Element = ClockTree.Element;
const Sources = ClockTree.Sources;
const Output = ClockTree.Output;
const Input = ClockTree.Input;
const ReferenceValue = ClockTree.ReferenceValue;

var nameMap: std.StringHashMap(Element) = undefined;

pub fn main() !void {
    var out_buffer: [50]u8 = undefined;
    var json_dir = try std.fs.cwd().openDir("out-json", .{ .iterate = true });
    var iter = json_dir.iterate();
    while (true) {
        const file = try iter.next();
        if (file) |entry| {
            switch (entry.kind) {
                .file => {
                    std.debug.print("create new file: {s}\n", .{entry.name});
                    const name = entry.name;
                    const out_name = std.fmt.bufPrint(&out_buffer, "out-zig/{s}.zig", .{name[0..(name.len - 5)]}) catch continue;
                    if (std.mem.eql(u8, out_name, "out-zig/STM32L451R(C-E)Yx.zig")) {
                        //@breakpoint();
                    }
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

fn load_global_map(tree: *const Tree, alloc: std.mem.Allocator) !void {
    var map = std.StringHashMap(Element).init(alloc);
    for (tree.element) |element| {
        try map.put(element.name, element);
    }
    nameMap = map;
}

fn create_files(json_file: std.fs.File, out_name: []const u8) !void {
    var arena_state = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena_state.deinit();
    const arena = arena_state.allocator();
    const file_slice = json_file.readToEndAlloc(arena, 1023 * 1000) catch unreachable;

    const corrent_tree = try std.json.parseFromSlice(Tree, arena, file_slice, .{ .duplicate_field_behavior = .use_last });
    const tree = &corrent_tree.value;
    const clear_tree = try clean_tree(tree, arena);
    std.fs.cwd().deleteFile(out_name) catch {};
    const zig_file = try std.fs.cwd().createFile(out_name, .{ .truncate = false });
    errdefer zig_file.close();
    try load_global_map(&clear_tree, arena);
    _ = try zig_file.write(
        \\const std = @import("std");
        \\const clock = @import("../ClockNode.zig");
        \\const ClockNode = clock.ClockNode;
        \\const ClockNodeTypes = clock.ClockNodesTypes;
        \\const ClockState = clock.ClockState;
        \\const ClockError = clock.ClockError;
        \\
        \\
    );
    try create_configs(&clear_tree, zig_file.writer().any());
    try create_conf_struct(&clear_tree, zig_file.writer().any());
    try create_clock_struct(&clear_tree, zig_file.writer().any());
    zig_file.close();
    var ch = std.process.Child.init(&[_][]const u8{ "zig", "fmt", out_name }, arena);
    _ = try ch.spawnAndWait();
}

fn clean_tree(base_tree: *const Tree, alloc: std.mem.Allocator) !Tree {
    var new_elements = std.ArrayList(Element).init(alloc);
    for (base_tree.element) |element| {
        if (TypeMap.get(element.Elementtype)) |_| {
            switch (element.reference) {
                .NoReference => continue,
                else => {},
            }
            try new_elements.append(element);
        }
    }

    return Tree{ .name = base_tree.name, .element = try new_elements.toOwnedSlice() };
}

fn check_input(name: []const u8) bool {
    return if (nameMap.get(name)) |_| true else false;
}

//========= config types =========
///create enum configs for each type in clocktree
fn create_configs(tree: *const Tree, writer: std.io.AnyWriter) !void {
    for (tree.element) |element| {
        if (std.mem.eql(u8, "output", element.Elementtype)) {
            continue;
        } else if (std.mem.eql(u8, "activeOutput", element.Elementtype)) {
            continue;
        }
        switch (element.reference) {
            .NumberList => |list| {
                try create_list_config(&element, list, writer);
            },
            .Input => |_| {
                try create_mutiplexor_config(&element, writer);
            },
            .Number,
            => |values| {
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
    .{ "distinctValsSource", "CLOCK_" },
});

fn create_list_config(element: *const Element, list: ClockTree.ReferenceNumberList, writer: std.io.AnyWriter) !void {
    const postfix = ListMap.get(element.Elementtype) orelse return error.InvalidListType;

    try writer.print(
        \\pub const @"{s}Conf" = enum{{
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
        \\pub fn get(self: @This()) f32 {{
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
    try writer.print("pub const @\"{s}Conf\" = enum{{\n", .{element.name});
    for (element.sources) |sources| {
        switch (sources) {
            .input => |input| {
                if (check_input(input.from)) {
                    try writer.print("{s},\n", .{input.from});
                }
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
        \\pub const @"{s}Conf" = enum(u32) {{
        \\    _,
        \\    pub fn get(num: @This()) f32 {{
        \\        const val: u32 = @intFromEnum(num);
        \\        return @as(f32,@floatFromInt(val));
        \\    }}
        \\
        \\   pub fn max() f32 {{
        \\      return {d};
        \\   }}
        \\
        \\   pub fn min() f32 {{
        \\      return {d};
        \\  }}
        \\}};
        \\
    , .{ name, max, min });
}

//======= config struct ==========
///cretate the config struct
fn create_conf_struct(tree: *const Tree, writer: std.io.AnyWriter) !void {
    try writer.print("pub const Config = struct {{\n", .{});
    for (tree.element) |element| {
        const name = element.name;
        if (std.mem.eql(u8, "output", element.Elementtype)) {
            continue;
        } else if (std.mem.eql(u8, "activeOutput", element.Elementtype)) {
            continue;
        }

        switch (element.reference) {
            .Number => |number| {
                try writer.print("{s}: @\"{s}Conf\" = @enumFromInt({d}),\n", .{ name, name, number.default });
            },
            .NumberList => |list| {
                const postfix = ListMap.get(element.Elementtype) orelse unreachable; //has already been verified in the configuration step
                const number = list.default;
                const aux: u32 = @intFromFloat(number);

                try writer.print("{s}: @\"{s}Conf\" = ", .{ name, name });
                if (number == @as(f32, @floatFromInt(aux))) {
                    try writer.print(".{s}{d}", .{ postfix, number });
                } else {
                    try writer.print(".@\"{s}{d}\"", .{ postfix, number });
                }
                try writer.print(",\n", .{});
            },
            .Input => |input| {
                try writer.print("{s}: @\"{s}Conf\" = .{s},\n", .{ name, name, input.DefaultInput });
            },
            else => {},
        }
    }

    try writer.print("}};\n\n", .{});
}

//======= Clock Struct ========

fn create_clock_struct(tree: *const Tree, writer: std.io.AnyWriter) !void {
    try writer.print(
        \\const ClockTree = struct {{
        \\  const this = @This();
        \\
        \\
    , .{});

    try create_clock_types(tree, writer);
    try create_init_comptime(tree, writer);
    try create_clock_validate(tree, writer);

    try writer.print(
        \\}};
        \\
        \\
    , .{});
}

const TypeRef = *const fn (*const Element, std.io.AnyWriter) anyerror!void;
const TypeMap = std.StaticStringMap(TypeRef).initComptime(.{
    .{ "distinctValsSource", create_source },
    .{ "fixedSource", create_source },
    .{ "variedSource", create_source },
    .{ "fractional", create_source },
    .{ "multiplicator", create_prescaler },
    .{ "multiplicatorFrac", create_mulfrac },
    .{ "devisor", create_prescaler },
    .{ "divisor", create_prescaler },
    .{ "multiplexor", create_multiplex },
    .{ "xbar", create_multiplex },
    .{ "output", create_output },
    .{ "activeOutput", create_output },
});
fn create_clock_types(tree: *const Tree, writer: std.io.AnyWriter) !void {
    for (tree.element) |element| {
        try writer.print("@\"{s}\": ClockNode,\n", .{element.name});
    }
}

fn create_init_comptime(tree: *const Tree, writer: std.io.AnyWriter) !void {
    const palloc = std.heap.page_allocator;
    var parentmap = std.StringHashMap(bool).init(palloc);
    defer parentmap.deinit();
    try writer.print(
        \\pub fn init_comptime(comptime config: Config) this {{
        \\
    , .{});
    for (tree.element) |element| {
        if (parentmap.get(element.name)) |_| continue;
        try parentmap.put(element.name, true);
        try create_node_source(&element, writer, &parentmap);
    }

    _ = try writer.write("return .{\n");
    for (tree.element) |element| {
        try writer.print(".@\"{s}\" = @\"{s}\",\n", .{ element.name, element.name });
    }

    _ = try writer.write(
        \\  };
        \\}
        \\
    );
}

fn create_node_source(element: *const Element, writer: std.io.AnyWriter, parentmap: *std.StringHashMap(bool)) !void {
    //std.debug.print("create source for: {s}\n", .{element.name});
    for (element.sources) |source| {
        switch (source) {
            .input => |input| {
                const input_name = input.from;
                if (std.mem.eql(u8, input_name, element.name)) continue;
                if (parentmap.get(input_name)) |_| continue;
                const input_element = nameMap.get(input_name) orelse continue;
                try parentmap.put(input_name, true);
                try create_node_source(&input_element, writer, parentmap);
            },
            else => {},
        }
    }

    try create_node(element, writer);
    //std.debug.print("===end create===\n", .{});
}
fn create_node(element: *const Element, writer: std.io.AnyWriter) !void {
    try writer.print(
        \\const @"{s}": ClockNode = .{{
        \\  .name = "{s}",
        \\
    , .{ element.name, element.name });
    const callback = TypeMap.get(element.Elementtype) orelse return error.InvalidType;
    callback(element, writer) catch |err| {
        switch (err) {
            error.RecursiveNode => {
                try writer.print(
                    \\.Nodetype = .{{ .none = {{}} }},
                    \\
                , .{});
            },
            else => return err,
        }
    };

    try writer.print(
        \\}};
        \\ 
    , .{});
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

fn create_prescaler(element: *const Element, writer: std.io.AnyWriter) anyerror!void {
    const name = element.name;
    const first_input = try find_fist_input(element.sources);
    if (std.mem.eql(u8, name, first_input)) return error.RecursiveNode;
    var buf: [5]u8 = undefined;
    const prefix = ListMap.get(element.Elementtype) orelse return error.InvalidPrescalerType;
    const lower_prefix = to_lower(&buf, prefix);
    switch (element.reference) {
        .Number => |limits| {
            try writer.print(
                \\.Nodetype = .{{ .{s} = .{{ .value = config.@"{s}".get(), .limit = .{{ .max = {d}, .min = {d} }} }} }},
                \\.parents = &[_]*const ClockNode{{&@"{s}"}},
                \\
            , .{ lower_prefix, name, limits.max, limits.min, first_input });
        },
        .NumberList => {
            try writer.print(
                \\.Nodetype = .{{ .{s} = .{{ .value = config.@"{s}".get() }} }},
                \\.parents = &[_]*const ClockNode{{&@"{s}"}},
                \\
            , .{ lower_prefix, name, first_input });
        },
        .FixedNumber => |num| {
            try writer.print(
                \\.Nodetype = .{{ .{s} = .{{ .value = {d} }} }},
                \\.parents = &[_]*const ClockNode{{&@"{s}"}},
                \\
            , .{ lower_prefix, num, first_input });
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
        .Number => |limits| {
            try writer.print(
                \\.Nodetype = .{{ .mulfrac = .{{ .value = config.@"{s}".get(), .limit = .{{ .max = {d}, .min = {d} }} }} }},
                \\.parents = &[_]*const ClockNode{{&@"{s}", &@"{s}"}},
                \\
            , .{ name, limits.max, limits.min, inputs.inputid, inputs.fractid });
        },
        .NumberList => {
            try writer.print(
                \\.Nodetype = .{{ .mulfrac = .{{ .value = config.@"{s}".get() }} }},
                \\.parents = &[_]*const ClockNode{{&@"{s}", &@"{s}"}},
                \\
            , .{ name, inputs.inputid, inputs.fractid });
        },
        .FixedNumber => |num| {
            try writer.print(
                \\.Nodetype = .{{ .mulfrac = .{{ .value = {d} }} }},
                \\.parents = &[_]*const ClockNode{{&@"{s}", &@"{s}"}},
                \\
            , .{ num, inputs.inputid, inputs.fractid });
        },
        else => {
            return error.InvalidMulRef;
        },
    }
}

fn create_multiplex(element: *const Element, writer: std.io.AnyWriter) anyerror!void {
    const name = element.name;

    try writer.print(
        \\
        \\.Nodetype = .{{ .multi = @intFromEnum(config.{s}) }},
        \\.parents = &[_]*const ClockNode{{
    , .{name});

    for (element.sources) |source| {
        switch (source) {
            .input => |input| {
                if (check_input(input.from)) {
                    try writer.print("&@\"{s}\",", .{input.from});
                }
            },
            else => {},
        }
    }
    _ = try writer.write(
        \\},
        \\
    );
}

fn create_output(element: *const Element, writer: std.io.AnyWriter) anyerror!void {
    const input_id = try find_fist_input(element.sources);
    if (std.mem.eql(u8, element.name, input_id)) return error.RecursiveNode;
    switch (element.reference) {
        .Number => |num| {
            try writer.print(
                \\.Nodetype = .{{ .output = .{{ .max = {d}, .min = {d} }} }},
                \\.parents = &[_]*const ClockNode{{&@"{s}"}},
                \\
            , .{ num.max, num.min, input_id });
        },
        else => {
            try writer.print(
                \\.Nodetype = .{{ .output = null }},
                \\.parents = &[_]*const ClockNode{{&@"{s}"}},
                \\
            , .{input_id});
        },
    }
}

fn create_source(element: *const Element, writer: std.io.AnyWriter) anyerror!void {
    const name = element.name;
    switch (element.reference) {
        .Number => |limits| {
            try writer.print(
                \\.Nodetype = .{{ .source = .{{ .value = config.@"{s}".get(), .limit = .{{ .max = {d}, .min = {d} }}, }} }},
                \\
            , .{ name, limits.max, limits.min });
        },
        .NumberList => {
            try writer.print(
                \\.Nodetype = .{{ .source = .{{ .value = config.@"{s}".get() }} }},
                \\
            , .{name});
        },
        .FixedNumber => |num| {
            try writer.print(
                \\.Nodetype = .{{ .source = .{{ .value = {d} }} }},
                \\
            , .{num});
        },
        else => {},
    }
}

fn create_clock_validate(tree: *const Tree, writer: std.io.AnyWriter) !void {
    try writer.print(
        \\
        \\ pub fn validate(comptime self: *const this) void {{
        \\
    , .{});
    for (tree.element) |element| {
        const name = element.name;

        if (std.mem.eql(u8, element.Elementtype, "activeOutput")) {
            try writer.print(
                \\ _ = self.@"{s}".get_comptime();
                \\
            , .{name});
        }
    }

    try writer.print("\n}}\n", .{});
}
