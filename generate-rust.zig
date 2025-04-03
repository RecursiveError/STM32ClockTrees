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
    var out_buffer: [100]u8 = undefined;
    var valid_name: [50]u8 = undefined;
    var json_dir = try std.fs.cwd().openDir("out-json", .{ .iterate = true });
    var iter = json_dir.iterate();
    while (true) {
        const file = try iter.next();
        if (file) |entry| {
            switch (entry.kind) {
                .file => {
                    const name = entry.name;
                    const valid = to_valid_file_name(name[0..(name.len - 5)], &valid_name);
                    const out_name = std.fmt.bufPrint(&out_buffer, "out-rust/{s}.rs", .{valid}) catch continue;
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

fn to_valid_file_name(name: []const u8, buffer: []u8) []const u8 {
    var out_index: usize = 0;
    for (name) |char| {
        if (char == '-') {
            buffer[out_index] = '_';
            out_index += 1;
        } else if (std.ascii.isAlphanumeric(char)) {
            buffer[out_index] = char;
            out_index += 1;
        }
    }

    return buffer[0..out_index];
}

fn get_valid_name(name: []const u8, out_buffer: []u8) ![]const u8 {
    for (0..name.len) |index| {
        if (std.ascii.isAlphabetic(name[index])) {
            const valid_start = name[index..];
            _ = std.mem.replace(u8, valid_start, "-", "_", out_buffer);
            return out_buffer[0..valid_start.len];
        }
    }
    return error.InvalidName;
}

fn load_global_map(tree: *const Tree, alloc: std.mem.Allocator) !void {
    var map = std.StringHashMap(Element).init(alloc);
    for (tree.element) |element| {
        const out_name = try alloc.alloc(u8, element.name.len);
        try map.put(try get_valid_name(element.name, out_name), element);
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
    std.fs.cwd().deleteFile(out_name) catch {};
    const rust_file = try std.fs.cwd().createFile(out_name, .{ .truncate = false });
    errdefer rust_file.close();
    try load_global_map(tree, arena);
    try create_prefix(tree, rust_file.writer().any());
    try create_configs(tree, rust_file.writer().any());
    try create_conf_struct(tree, rust_file.writer().any());
    try create_clock_impl(tree, rust_file.writer().any());
    rust_file.close();
}

fn check_input(name: []const u8) bool {
    return if (nameMap.get(name)) |_| true else false;
}

//========= config types =========

fn create_prefix(tree: *const Tree, writer: std.io.AnyWriter) !void {
    try writer.print(
        \\#[derive(Debug, Clone, PartialEq, Eq)]
        \\#[cfg_attr(feature = "serialize", derive(serde::Serialize))]
        \\pub enum ClockNodes {{
        \\None,
        \\
    , .{});
    var out_name: [50]u8 = undefined;
    for (tree.element) |element| {
        try writer.print("{s},\n", .{try get_valid_name(element.name, &out_name)});
    }
    try writer.print("}}\n", .{});
    try writer.print(
        \\#[derive(Debug, Clone, PartialEq, Eq)]
        \\#[cfg_attr(feature = "serialize", derive(serde::Serialize))]
        \\pub enum ClockErrorType {{
        \\  Underflow(u32, u32),
        \\  Overflow(u32, u32),
        \\}}
        \\#[derive(Debug)]
        \\#[cfg_attr(feature = "serialize", derive(serde::Serialize))]
        \\pub struct ClockError {{
        \\  err_type: ClockErrorType,
        \\  from: ClockNodes,
        \\  to: ClockNodes,
        \\}}
        \\
    , .{});
}
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
    const prefix = ListMap.get(element.Elementtype) orelse return error.InvalidListType;
    var out_name: [50]u8 = undefined;

    try writer.print(
        \\#[derive(Debug, Clone, PartialEq, Eq)]
        \\#[cfg_attr(feature = "serialize", derive(serde::Serialize))]
        \\pub enum {s}Conf {{
        \\
    , .{try get_valid_name(element.name, &out_name)});
    for (list.list) |number| {
        const aux: u32 = @intFromFloat(number);
        if (number == @as(f32, @floatFromInt(aux))) {
            try writer.print("{s}{d},\n", .{ prefix, number });
        } else {
            const float_dec: u32 = @intFromFloat((number - @as(f32, @floatFromInt(aux))) * 10);
            try writer.print("{s}{d}_{d},\n", .{ prefix, aux, float_dec });
        }
    }

    try writer.print(
        \\}}
        \\
        \\impl {s}Conf {{
        \\  pub fn get(&self) -> Result<f32, ClockError> {{
        \\      match self {{
        \\
    , .{try get_valid_name(element.name, &out_name)});

    for (list.list) |number| {
        const aux: u32 = @intFromFloat(number);
        if (number == @as(f32, @floatFromInt(aux))) {
            try writer.print("{s}Conf::{s}{d} => return Ok({d}.0),\n", .{ try get_valid_name(element.name, &out_name), prefix, number, number });
        } else {
            const float_dec: u32 = @intFromFloat((number - @as(f32, @floatFromInt(aux))) * 10);

            try writer.print("{s}Conf::{s}{d}_{d} => return Ok({d}),\n", .{ try get_valid_name(element.name, &out_name), prefix, aux, float_dec, number });
        }
    }

    try writer.print(
        \\      }}
        \\  }}
        \\}}
        \\
    , .{});
}

fn create_mutiplexor_config(element: *const Element, writer: std.io.AnyWriter) !void {
    var out_name: [50]u8 = undefined;
    try writer.print(
        \\#[derive(Debug, Clone, PartialEq, Eq)]
        \\#[cfg_attr(feature = "serialize", derive(serde::Serialize))]
        \\pub enum {s}Conf {{
        \\
    , .{try get_valid_name(element.name, &out_name)});
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
    try writer.print("}}\n", .{});
}

fn create_number_config(element: *const Element, number: ClockTree.ReferenceNumber, writer: std.io.AnyWriter) !void {
    var out_name: [50]u8 = undefined;
    const name = try get_valid_name(element.name, &out_name);
    const max = number.max;
    const min = number.min;
    try writer.print(
        \\#[derive(Debug, Clone, PartialEq, Eq)]
        \\#[cfg_attr(feature = "serialize", derive(serde::Serialize))]
        \\    pub enum {s}Conf {{
        \\    Value(u32),
        \\}}
        \\
        \\impl {s}Conf {{
        \\    pub const fn min() -> u32 {{
        \\        {d}
        \\    }}
        \\
        \\    pub const fn max() -> u32 {{
        \\        {d}
        \\    }}
        \\
        \\    pub const fn get(&self) -> Result<f32, ClockError> {{
        \\        match self {{
        \\            {s}Conf::Value(val) => {{
        \\                if *val < Self::min() {{
        \\                    return Err(ClockError {{
        \\                        err_type: ClockErrorType::Underflow(*val, Self::min()),
        \\                        from: ClockNodes::None,
        \\                        to: ClockNodes::{s},
        \\                    }});
        \\                }} else if *val > Self::max() {{
        \\                    return Err(ClockError {{
        \\                        err_type: ClockErrorType::Overflow(*val, Self::max()),
        \\                        from: ClockNodes::None,
        \\                        to: ClockNodes::{s},
        \\                    }});
        \\                }}
        \\                Ok(*val as f32)
        \\            }}
        \\        }}
        \\    }}
        \\}}
    , .{
        name,
        name,
        min,
        max,
        name,
        name,
        name,
    });
}

//======= config struct ==========
///cretate the config struct
fn create_conf_struct(tree: *const Tree, writer: std.io.AnyWriter) !void {
    try writer.print(
        \\#[derive(Debug, Clone)]
        \\#[cfg_attr(feature = "serialize", derive(serde::Serialize, serde::Deserialize))]
        \\pub struct ClockTree {{
        \\
    , .{});
    for (tree.element) |element| {
        var out_name: [50]u8 = undefined;
        const name = try get_valid_name(element.name, &out_name);
        if (std.mem.eql(u8, "output", element.Elementtype)) {
            continue;
        } else if (std.mem.eql(u8, "activeOutput", element.Elementtype)) {
            continue;
        }

        switch (element.reference) {
            .Input, .Number, .NumberList => {
                try writer.print("pub {s}: {s}Conf,\n", .{ name, name });
            },
            else => {},
        }
    }
    try writer.print("}}\n\n", .{});
    try create_default(tree, writer);
}

fn create_default(tree: *const Tree, writer: std.io.AnyWriter) !void {
    try writer.print(
        \\impl Default for ClockTree {{
        \\  fn default() -> Self {{
        \\      Self {{
        \\
    , .{});

    for (tree.element) |element| {
        var out_name: [50]u8 = undefined;
        const name = try get_valid_name(element.name, &out_name);
        if (std.mem.eql(u8, "output", element.Elementtype)) {
            continue;
        } else if (std.mem.eql(u8, "activeOutput", element.Elementtype)) {
            continue;
        }

        switch (element.reference) {
            .Number => |number| {
                try writer.print("{s}: {s}Conf::Value({d}),\n", .{ name, name, number.default });
            },
            .NumberList => |list| {
                const prefix = ListMap.get(element.Elementtype) orelse return error.InvalidListType;
                const number = list.default;
                const aux: u32 = @intFromFloat(number);
                if (number == @as(f32, @floatFromInt(aux))) {
                    try writer.print("{s}: {s}Conf::{s}{d},\n", .{ name, name, prefix, aux });
                } else {
                    const float_dec: u32 = @intFromFloat((number - @as(f32, @floatFromInt(aux))) * 10);

                    try writer.print("{s}: {s}Conf::{s}{d}_{d},\n", .{ name, name, prefix, aux, float_dec });
                }
            },
            .Input => |input| {
                try writer.print("{s}: {s}Conf::{s},\n", .{ name, name, input.DefaultInput });
            },
            else => {},
        }
    }

    try writer.print(
        \\    }}
        \\  }}
        \\}}
        \\
    , .{});
}

//======= Clock Struct ========

fn create_clock_impl(tree: *const Tree, writer: std.io.AnyWriter) !void {
    try writer.print(
        \\impl ClockTree {{
        \\
    , .{});

    for (tree.element) |element| {
        const create_fn: TypeRef = TypeMap.get(element.Elementtype) orelse continue;
        try create_fn(&element, writer);
    }

    try writer.print(
        \\}}
    , .{});
}

const TypeRef = *const fn (*const Element, std.io.AnyWriter) anyerror!void;
const TypeMap = std.StaticStringMap(TypeRef).initComptime(.{
    .{ "multiplicator", create_mul },
    .{ "multiplicatorFrac", create_mulfrac },
    .{ "devisor", create_div },
    .{ "divisor", create_div },
    .{ "multiplexor", create_multiplex },
    .{ "xbar", create_multiplex },
    .{ "output", create_output },
    .{ "activeOutput", create_output },
    .{ "distinctValsSource", create_source },
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
    var out_name: [50]u8 = undefined;
    const name = try get_valid_name(element.name, &out_name);
    const first_input = try find_fist_input(element.sources);
    switch (element.reference) {
        .FixedNumber => |number| {
            try writer.print(
                \\fn {s}_get(&self) -> Result<f32, ClockError> {{
                \\  let input = self.{s}_get()? as f32;
                \\  let value = {d} as f32;
                \\  Ok((input * value) as f32)
                \\}}
                \\
                \\
            , .{
                name,
                first_input,
                number,
            });
        },
        .Number, .NumberList => {
            try writer.print(
                \\fn {s}_get(&self) -> Result<f32, ClockError> {{
                \\  let input = self.{s}_get()? as f32;
                \\  let value = self.{s}.get()? as f32;
                \\  Ok((input * value) as f32)
                \\}}
                \\
                \\
            , .{
                name,
                first_input,
                name,
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
    var out_name: [50]u8 = undefined;
    const name = try get_valid_name(element.name, &out_name);
    const inputs = try find_fract(element.sources);
    switch (element.reference) {
        .NumberList, .Number => {
            try writer.print(
                \\fn {s}_get(&self) -> Result<f32, ClockError> {{
                \\  let input = self.{s}_get()? as f32;
                \\  let frac = self.{s}_get()? as f32;
                \\  let frac_max = {s}Conf::max() as f32;
                \\  let value = self.{s}.get()? as f32;
                \\  let ret = (input * (value + (frac/frac_max)));
                \\  Ok(ret as f32)
                \\}}
                \\
                \\
            , .{
                name,
                inputs.inputid,
                inputs.fractid,
                inputs.fractid,
                name,
            });
        },
        .FixedNumber => |number| {
            try writer.print(
                \\fn {s}_get(&self) -> Result<f32, ClockError> {{
                \\  let input = self.{s}_get()? as f32;
                \\  let frac = self.{s}_get()? as f32;
                \\  let frac_max = {s}Conf::max() as f32;
                \\  let value = {d} as f32;
                \\  let ret = (input * (value + (frac/frac_max)))
                \\  Ok(ret as f32)
                \\}}
                \\
                \\
            , .{
                name,
                inputs.inputid,
                inputs.fractid,
                inputs.fractid,
                number,
            });
        },
        else => {
            return error.InvalidMulRef;
        },
    }
}

fn create_div(element: *const Element, writer: std.io.AnyWriter) anyerror!void {
    var out_name: [50]u8 = undefined;
    const name = try get_valid_name(element.name, &out_name);
    const first_input = try find_fist_input(element.sources);
    switch (element.reference) {
        .NumberList, .Number => {
            try writer.print(
                \\fn {s}_get(&self) -> Result<f32, ClockError> {{
                \\  let input = self.{s}_get()? as f32;
                \\  let value = self.{s}.get()? as f32;
                \\  Ok((input / value) as f32)
                \\}}
                \\
                \\
            , .{
                name,
                first_input,
                name,
            });
        },
        .FixedNumber => |number| {
            try writer.print(
                \\fn {s}_get(&self) -> Result<f32, ClockError> {{
                \\  let input = self.{s}_get()? as f32;
                \\  let value = {d} as f32;
                \\  Ok((input / value) as f32)
                \\}}
                \\
                \\
            , .{
                name,
                first_input,
                number,
            });
        },
        else => {
            return error.InvalidMulRef;
        },
    }
}

fn create_multiplex(element: *const Element, writer: std.io.AnyWriter) anyerror!void {
    var out_name: [50]u8 = undefined;
    const name = try get_valid_name(element.name, &out_name);
    try writer.print(
        \\fn {s}_get(&self) -> Result<f32, ClockError> {{
        \\  match self.{s} {{
        \\
    , .{ name, name });

    for (element.sources) |source| {
        switch (source) {
            .input => |input| {
                if (check_input(input.from)) {
                    try writer.print("{s}Conf::{s} => return self.{s}_get(),\n ", .{ name, input.from, input.from });
                }
            },
            else => {},
        }
    }

    try writer.print(
        \\      }};
        \\   }}
        \\
    , .{});
}

fn create_output(element: *const Element, writer: std.io.AnyWriter) anyerror!void {
    var out_name: [50]u8 = undefined;
    const name = try get_valid_name(element.name, &out_name);
    const input_id = try find_fist_input(element.sources);
    switch (element.reference) {
        .Number => |num| {
            try writer.print(
                \\ pub fn {s}_get(&self) -> Result<f32, ClockError> {{
                \\  let input = self.{s}_get()?;
                \\  if input > ({d} as f32) {{
                \\      return Err(ClockError {{
                \\        err_type: ClockErrorType::Overflow(input as u32, {d}),
                \\        from: ClockNodes::{s},
                \\        to: ClockNodes::{s},
                \\    }});
                \\  }}else if input < ({d} as f32) {{
                \\    return Err(ClockError {{
                \\        err_type: ClockErrorType::Underflow(input as u32, {d}),
                \\        from: ClockNodes::{s},
                \\        to: ClockNodes::{s},
                \\    }});
                \\  
                \\  }}
                \\  Ok(input)
                \\
                \\
                \\}}
                \\
            , .{
                name,
                input_id,
                num.max,
                num.max,
                input_id,
                name,
                num.min,
                num.min,
                input_id,
                name,
            });
        },
        else => {
            try writer.print(
                \\ pub fn {s}_get(&self) -> Result<f32, ClockError> {{
                \\      self.{s}_get()
                \\}}
                \\
            , .{
                name,
                input_id,
            });
        },
    }
}

fn create_source(element: *const Element, writer: std.io.AnyWriter) anyerror!void {
    var out_name: [50]u8 = undefined;
    const name = try get_valid_name(element.name, &out_name);
    switch (element.reference) {
        .Number, .NumberList => {
            try writer.print(
                \\ pub fn {s}_get(&self) -> Result<f32, ClockError> {{
                \\    self.{s}.get()
                \\}}
                \\
            , .{
                name,
                name,
            });
        },
        .FixedNumber => |num| {
            try writer.print(
                \\ pub fn {s}_get(&self) -> Result<f32, ClockError> {{
                \\    Ok({d} as f32)
                \\}}
                \\
            , .{
                name,
                num,
            });
        },
        else => {},
    }
}
