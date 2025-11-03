const std = @import("std");
const McuData = @import("mcu_info.zig");
const Mcu_Info = McuData.MCU_Info;
const Clock_Node = McuData.Clock_Node;
const Clock_Node_Variant = McuData.Clock_Node_Variant;
const Clock_Node_Input = McuData.Clock_Node_Input;
const Clock_Tree = McuData.Clock_Tree;
const Reference = McuData.Reference;
const Ref_variant = McuData.Ref_variant;
const Ref_type = McuData.Ref_type;
const Integrer_Range = McuData.Integrer_Range;
const Float_Range = McuData.Float_Range;
const List_Item = McuData.List_Item;
const List = McuData.List;

const XmlParser = @import("xml-parser");
const Element = XmlParser.Element;

const MCU_dir_path = "/home/guilherme/STM32CubeMX/db/mcu/";
const MCU_out_dir_path = "/home/guilherme/STM32ClockTrees/mcu_out/";
const Clock_dir_path = "/home/guilherme/STM32CubeMX/db/plugins/clock/";
const Ref_dir_path = "/home/guilherme/STM32CubeMX/db/mcu/IP/";
const Clock_out_dir_path = "/home/guilherme/STM32ClockTrees/clock_out";

var clk_value_ref_map: std.StringArrayHashMap(void) = undefined;
var local_source_map: std.StringArrayHashMap(usize) = undefined;
var local_config_map: std.StringArrayHashMap(usize) = undefined;
var extra_flags_map: std.StringArrayHashMap(usize) = undefined;

pub fn main() !void {
    var total: usize = 0;
    var fail: usize = 0;
    var clk_ref_map = std.StringHashMap(void).init(std.heap.page_allocator);
    defer clk_ref_map.deinit();

    var mcu_dir = try std.fs.openDirAbsolute(MCU_dir_path, .{
        .iterate = true,
        .access_sub_paths = false,
    });
    defer mcu_dir.close();

    var out_dir = try std.fs.openDirAbsolute(MCU_out_dir_path, .{});
    defer out_dir.close();

    var dir_iter = mcu_dir.iterate();
    while (try dir_iter.next()) |entry| {
        if (entry.kind == .file) {
            if (std.mem.startsWith(u8, entry.name, "STM32")) {
                std.log.info("======start {s} parser======", .{entry.name});
                parser_clock_tree(&mcu_dir, &out_dir, entry.name, &clk_ref_map) catch |err| {
                    std.log.err("Fail to parser, error {any}", .{err});
                    fail += 1;
                };
                std.log.info("===========end===============", .{});
                total += 1;
            }
        }
    }

    std.log.info("MCU PARSER END: total files: {d}, FAIl {d} ", .{ total, fail });
    std.log.info("FOUND {d} clock ref unions: ", .{clk_ref_map.count()});
    try clock_ref_union_parser(&clk_ref_map);
}

//MCU Parser

fn parser_clock_tree(in_dir: *std.fs.Dir, out_dir: *std.fs.Dir, mcu_file: []const u8, clk_ref_map: *std.StringHashMap(void)) !void {
    var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena.deinit();

    var file = try in_dir.openFile(mcu_file, .{});
    defer file.close();

    var mcu_parsed = try XmlParser.parse(arena.allocator(), "", file.reader());
    defer mcu_parsed.deinit();

    mcu_parsed.acquire();
    defer mcu_parsed.release();
    const info = try get_mcu_info(&mcu_parsed, arena.allocator());
    _ = try clk_ref_map.getOrPut(try std.heap.page_allocator.dupe(u8, info.clock_ref_file_union));
    try generate_json(out_dir, info, arena.allocator());
}

fn format(alloc: std.mem.Allocator, in: []const u8) ![]const u8 {
    const out = try alloc.dupe(u8, in);
    _ = std.mem.replace(u8, in, " ", "_", out);
    return out;
}

fn get_mcu_info(doc: *XmlParser.Document, alloc: std.mem.Allocator) !Mcu_Info {
    var clk_ref_name: ?[]const u8 = null;
    var mcu_extra_info = std.ArrayList([]const u8).init(alloc);

    errdefer mcu_extra_info.deinit();

    for (doc.root.children()) |ch| {
        switch (ch.v()) {
            .element => |node| {
                const n_name = node.tag_name.slice();
                if (std.mem.eql(u8, n_name, "Die")) {
                    const text = node.children()[0].v().text.slice();
                    try mcu_extra_info.append(try format(alloc, text));
                } else if (std.mem.eql(u8, n_name, "IP")) {
                    const inst_name = node.attr("InstanceName") orelse continue;
                    if (node.attr("ClockEnableMode")) |_| {
                        try mcu_extra_info.append(try format(alloc, inst_name));
                    } else if (std.mem.eql(u8, inst_name, "RCC")) {
                        clk_ref_name = node.attr("Version") orelse return error.NoRCCRef;
                    }
                }
            },
            else => {},
        }
    }

    var clock_ref_union: [150]u8 = @splat(0);
    const tree = doc.root.attr("ClockTree") orelse return error.NoClockTree;
    const ref = clk_ref_name orelse return error.FailToGetClkRefUnion;

    const family = doc.root.attr("Family") orelse return error.NoFamily;
    const line = doc.root.attr("Line") orelse return error.NoLine;
    const pkg = doc.root.attr("Package") orelse return error.NoPackage;
    const name = doc.root.attr("RefName") orelse return error.NoRefName;
    try mcu_extra_info.append(try format(alloc, family));
    try mcu_extra_info.append(try format(alloc, line));
    try mcu_extra_info.append(try format(alloc, pkg));

    const union_name = try std.fmt.bufPrint(&clock_ref_union, "{s}_{s}", .{ tree, ref });
    return Mcu_Info{
        .name = name,
        .clock_ref_file_union = try alloc.dupe(u8, union_name),
        .extra_data = try mcu_extra_info.toOwnedSlice(),
    };
}

fn generate_json(dir: *std.fs.Dir, info: Mcu_Info, alloc: std.mem.Allocator) !void {
    const name = try alloc.alloc(u8, info.name.len + 6);
    defer alloc.free(name);
    const file_name = try std.fmt.bufPrint(name, "{s}.json", .{info.name});
    var file = try dir.createFile(file_name, .{ .read = true, .truncate = true });
    defer file.close();
    try std.json.stringify(info, .{}, file.writer());
}

fn clock_ref_union_parser(clk_ref: *std.StringHashMap(void)) !void {
    var clk_dir = try std.fs.openDirAbsolute(Clock_dir_path, .{});
    defer clk_dir.close();
    var ref_dir = try std.fs.openDirAbsolute(Ref_dir_path, .{});
    defer ref_dir.close();

    var cr = clk_ref.iterator();
    var name_buf: [150]u8 = undefined;
    while (cr.next()) |entry| {
        var arena = std.heap.ArenaAllocator.init(std.heap.page_allocator);
        errdefer arena.deinit();
        const parser_names = std.mem.indexOf(u8, entry.key_ptr.*[3..], "STM32") orelse continue;
        const clk_name = entry.key_ptr.*[0 .. parser_names + 2];
        const ref_name = entry.key_ptr.*[parser_names + 3 ..];
        std.log.info("clk: {s} with ref {s}", .{ clk_name, ref_name });

        const clk_file_name = try std.fmt.bufPrint(&name_buf, "{s}.xml", .{clk_name});

        //Clock Tree Parsing
        var clock_file = try clk_dir.openFile(clk_file_name, .{});
        var clk_parsed = try XmlParser.parse(arena.allocator(), "", clock_file.reader());
        clk_parsed.acquire();
        const clk_tree = clk_tree_parser(&clk_parsed, arena.allocator()) catch |err| {
            std.log.err("got err: {any} on ClockTree: {s}", .{ err, clk_file_name });
            return err;
        };
        clk_parsed.release();
        clk_parsed.deinit();
        clock_file.close();

        //Reference Parsing
        const ref_file_name = try std.fmt.bufPrint(&name_buf, "RCC-{s}_Modes.xml", .{ref_name});
        var ref_file = try ref_dir.openFile(ref_file_name, .{});
        var ref_parsed = try XmlParser.parse(arena.allocator(), "", ref_file.reader());
        ref_parsed.acquire();
        const refs = parser_ref(&ref_parsed, clk_tree, arena.allocator()) catch |err| {
            std.log.err("got err: {any} on RefFile: {s}", .{ err, ref_file_name });
            return err;
        };

        try generate_clk_json(entry.key_ptr.*, .{
            .nodes = clk_tree,
            .references = refs,
            .config_ref_names = local_config_map.keys(),
            .extra_flags = extra_flags_map.keys(),
        }, arena.allocator());

        //set up for next parsing
        clk_value_ref_map.deinit();
        local_source_map.deinit();
        local_config_map.deinit();
        extra_flags_map.deinit();

        ref_parsed.release();
        ref_parsed.deinit();
        ref_file.close();

        //free all remaining allocations (mostly strings)
        arena.deinit();
    }
}

fn generate_clk_json(tree_name: []const u8, info: Clock_Tree, alloc: std.mem.Allocator) !void {
    const name = try alloc.alloc(u8, tree_name.len + 6);
    defer alloc.free(name);

    var dir = try std.fs.openDirAbsolute(Clock_out_dir_path, .{});

    const file_name = try std.fmt.bufPrint(name, "{s}.json", .{tree_name});
    var file = try dir.createFile(file_name, .{ .read = true, .truncate = true });
    defer file.close();
    try std.json.stringify(info, .{}, file.writer());
}

// ============== Clock Tree Parser functions
fn clk_tree_parser(Doc: *XmlParser.Document, alloc: std.mem.Allocator) ![]Clock_Node {
    var clock_nodes = std.ArrayList(Clock_Node).init(alloc);
    errdefer clock_nodes.deinit();

    for (Doc.root.children()) |ch| {
        switch (ch.v()) {
            .element => |node| {
                const n_name = node.tag_name.slice();
                if (std.mem.eql(u8, n_name, "Tree")) {
                    try get_clock_tree(node, &clock_nodes, alloc);
                }
            },
            else => {},
        }
    }

    return clock_nodes.toOwnedSlice();
}

fn get_clock_tree(tree: XmlParser.Element, clock_nodes: *std.ArrayList(Clock_Node), alloc: std.mem.Allocator) !void {
    var clock_nodes_variant = std.ArrayList(Clock_Node_Variant).init(alloc);
    defer clock_nodes_variant.deinit();
    var actual_node: Clock_Node = undefined;
    actual_node.name = "";

    for (tree.children()) |cn| {
        switch (cn.v()) {
            .element => |cn_node| {
                const cn_name = cn_node.tag_name.slice();
                if (std.mem.eql(u8, cn_name, "Element")) {
                    const id = cn_node.attr("id") orelse continue;
                    if (std.mem.eql(u8, id, actual_node.name)) {
                        try clock_nodes_variant.append(try get_clock_variant(cn_node, alloc));
                    } else {
                        if (clock_nodes_variant.items.len != 0) {
                            actual_node.variants = try clock_nodes_variant.toOwnedSlice();
                            try clock_nodes.append(actual_node);
                        }
                        const enable_flag = cn_node.attr("refEnable");
                        actual_node.name = try alloc.dupe(u8, id);
                        actual_node.node_type = try alloc.dupe(u8, cn_node.attr("type") orelse unreachable);
                        actual_node.reference = try alloc.dupe(u8, cn_node.attr("refParameter") orelse unreachable);
                        actual_node.enable_flag = if (enable_flag) |ef| try alloc.dupe(u8, ef) else null;
                        try clock_nodes_variant.append(try get_clock_variant(cn_node, alloc));
                    }
                } else if (std.mem.eql(u8, cn_name, "Tree")) { //Sub tree
                    if (clock_nodes_variant.items.len != 0) {
                        actual_node.variants = try clock_nodes_variant.toOwnedSlice();
                        try clock_nodes.append(actual_node);
                    }
                    try get_clock_tree(cn_node, clock_nodes, alloc);
                }
            },
            else => {},
        }
    }

    if (clock_nodes_variant.items.len != 0) {
        actual_node.variants = try clock_nodes_variant.toOwnedSlice();
        try clock_nodes.append(actual_node);
    }
}

fn get_clock_variant(node: XmlParser.Element, alloc: std.mem.Allocator) !Clock_Node_Variant {
    var input = std.ArrayList(Clock_Node_Input).init(alloc);
    errdefer input.deinit();
    var output = std.ArrayList([]const u8).init(alloc);
    errdefer output.deinit();
    var variant: Clock_Node_Variant = undefined;
    variant.expr = null;

    for (node.children()) |ch| {
        switch (ch.v()) {
            .element => |e| {
                const name = e.tag_name.slice();
                if (std.mem.eql(u8, name, "Input")) {
                    const from = e.attr("from") orelse return error.InvalidInput;
                    const ref = e.attr("refValue");

                    try input.append(.{
                        .source = try alloc.dupe(u8, from),
                        .source_ref = if (ref) |r| try alloc.dupe(u8, r) else null,
                    });
                } else if (std.mem.eql(u8, name, "Output")) {
                    const out = e.attr("to") orelse return error.InvalidOutput;
                    try output.append(try alloc.dupe(u8, out));
                } else if (std.mem.eql(u8, name, "Condition")) {
                    const cond = e.attr("Expression") orelse return error.InvalidCondition;
                    variant.expr = try alloc.dupe(u8, cond);
                }
            },
            else => {},
        }
    }
    variant.inputs = try input.toOwnedSlice();
    variant.outputs = try output.toOwnedSlice();
    return variant;
}

fn parser_ref(ref_doc: *XmlParser.Document, nodes: []const Clock_Node, alloc: std.mem.Allocator) ![]Reference {
    var refs = std.ArrayList(Reference).init(alloc);
    errdefer refs.deinit();

    try init_refrence_maps(ref_doc, nodes, alloc);
    const clk = clk_value_ref_map.keys();
    const local_source = local_source_map.keys();
    const local_config = local_config_map.keys();

    //first parse all clock reference values
    for (clk) |key| {
        try refs.append(try get_ref_from_name(ref_doc, key, alloc));
    }

    //then parse local config and source values
    for (local_config) |key| {
        try refs.append(try get_ref_from_name(ref_doc, key, alloc));
    }

    //then parse local source and config values that are used
    for (local_source) |key| {
        const val = local_source_map.get(key).?;

        if (val != 0) {
            try refs.append(try get_ref_from_name(ref_doc, key, alloc));
        }
    }

    return refs.toOwnedSlice();
}

fn init_refrence_maps(doc: *XmlParser.Document, nodes: []const Clock_Node, alloc: std.mem.Allocator) !void {
    clk_value_ref_map = .init(alloc);
    local_source_map = .init(alloc);
    local_config_map = .init(alloc);
    extra_flags_map = .init(alloc);

    std.log.info("Initializing reference maps", .{});

    //list all clock reference values fisrt
    for (nodes) |n| {
        _ = try clk_value_ref_map.getOrPut(n.reference);
    }

    std.log.info("Total clk reference values: {d}", .{clk_value_ref_map.count()});

    //list all local source values
    for (doc.root.children()) |ch| {
        switch (ch.v()) {
            .element => |node| {
                const tag = node.tag_name.slice();
                if (std.mem.eql(u8, tag, "RefMode")) {
                    const refname = node.attr("Name") orelse continue;

                    if (std.mem.eql(u8, refname, "AdvancedSettings")) {
                        try load_into_maps(node, &local_config_map);
                    } else {
                        try load_into_maps(node, &local_source_map);
                    }
                }
            },
            else => {},
        }
    }

    std.log.info("Total local source values: {d}", .{local_source_map.count()});
    std.log.info("Total local config values: {d}", .{local_config_map.count()});

    //list all extra flags
    for (doc.root.children()) |ch| {
        switch (ch.v()) {
            .element => |node| {
                const tag = node.tag_name.slice();
                if (std.mem.startsWith(u8, tag, "Mode")) {
                    try load_extra_flags(node, &extra_flags_map);
                }
            },
            else => {},
        }
    }

    std.log.info("initil extra flags values: {d}", .{extra_flags_map.count()});
}

fn load_into_maps(element: XmlParser.Element, map: *std.StringArrayHashMap(usize)) !void {
    for (element.children()) |ch| {
        switch (ch.v()) {
            .element => |param| {
                const tag = param.tag_name.slice();
                if (std.mem.eql(u8, tag, "Parameter")) {
                    const p_name = param.attr("Name") orelse return error.InvalidRefParameter;
                    if (std.mem.indexOf(u8, p_name, "Enable")) |_| {
                        continue;
                    } else if (std.mem.indexOf(u8, p_name, "ARG")) |_| {
                        continue;
                    } else if (std.mem.indexOf(u8, p_name, "Used")) |_| {
                        continue;
                    } else if (std.mem.indexOf(u8, p_name, "State")) |_| {
                        continue;
                    } else if (std.mem.indexOf(u8, p_name, "Type")) |_| {
                        continue;
                    } else if (clk_value_ref_map.get(p_name)) |_| {
                        continue;
                    }
                    try map.put(p_name, 0);
                }
            },
            else => {},
        }
    }
}

fn load_extra_flags(element: XmlParser.Element, map: *std.StringArrayHashMap(usize)) !void {
    for (element.children()) |ch| {
        switch (ch.v()) {
            .element => |mode| {
                const tag = mode.tag_name.slice();
                if (std.mem.startsWith(u8, tag, "Mode")) {
                    try load_extra_flags(mode, map);
                } else if (std.mem.eql(u8, tag, "Semaphore")) {
                    const flag = mode.children()[0].v().text.slice();
                    try map.put(flag, 0);
                }
            },

            else => {},
        }
    }
}

//check if a string exists in the reference maps and update it
fn check_and_update(name: []const u8) !void {
    if (local_source_map.get(name)) |_| {
        local_source_map.getEntry(name).?.value_ptr.* += 1;
    } else if (extra_flags_map.get(name)) |_| {
        extra_flags_map.getEntry(name).?.value_ptr.* += 1;
    }
}

fn slice_condition(expr: []const u8) !void {
    var tokens = std.mem.splitAny(u8, expr, "+-#$@|=<>&!(),;: ");
    while (tokens.next()) |t| {
        check_and_update(t) catch |err| {
            std.log.err("Error updating reference map for condition token {s}, error: {any}", .{ t, err });
            return err;
        };
    }
}

fn get_ref_from_name(doc: *XmlParser.Document, name: []const u8, alloc: std.mem.Allocator) !Reference {
    var reference: Reference = undefined;
    reference.ref_name = name;
    var variants = std.ArrayList(Ref_variant).init(alloc);
    errdefer variants.deinit();

    for (doc.root.children()) |ch| {
        switch (ch.v()) {
            .element => |ref| {
                const ref_id = ref.attr("Name") orelse continue;
                if (std.mem.eql(u8, ref_id, name)) {
                    const variant = get_variant(ref, alloc) catch |err| {
                        switch (err) {
                            error.InvalidRefType => {
                                std.log.warn("Skipping unsupported reference type for reference {s}", .{name});
                                continue;
                            },
                            else => {
                                std.log.err("Error getting variant for reference {s}, error: {any}", .{ name, err });
                                return err;
                            },
                        }
                    };
                    try variants.append(variant);
                }
            },
            else => {},
        }
    }
    reference.variants = try variants.toOwnedSlice();
    return reference;
}

const GetNumRef = *const fn (XmlParser.Element, std.mem.Allocator) anyerror!Ref_type;
const RefNumMap = std.StaticStringMap(GetNumRef).initComptime(.{
    .{ "integer", get_int_number },
    .{ "double", get_float_number },
    .{ "list", get_list },
    .{ "List", get_list },
    .{ "uniqueElementList", get_list },
    .{ "u8niqueElementList", get_list },
});

fn get_variant(element: XmlParser.Element, alloc: std.mem.Allocator) !Ref_variant {
    var v: Ref_variant = undefined;
    v.expr = null;

    const rtype = element.attr("Type") orelse return error.InvalidRefType;

    const ref_callback = RefNumMap.get(rtype) orelse return error.InvalidRefType;
    v.ref = ref_callback(element, alloc) catch |err| {
        std.log.err("Error getting reference type {s}, error: {any}", .{ rtype, err });
        return err;
    };
    for (element.children()) |ch| {
        switch (ch.v()) {
            .element => |e| {
                const name = e.tag_name.slice();
                if (std.mem.eql(u8, name, "Condition")) {
                    const cond = e.attr("Expression") orelse return error.InvalidCondition;
                    try slice_condition(cond);
                    v.expr = try alloc.dupe(u8, cond);
                }
            },
            else => {},
        }
    }
    return v;
}

fn into_dynamic_range(def_str: []const u8, min_str: ?[]const u8, max_str: ?[]const u8, alloc: std.mem.Allocator) !Ref_type {
    if (min_str) |min| {
        if (max_str) |max| {
            if (std.mem.eql(u8, min, max)) {
                return .{ .fixed_expr = try alloc.dupe(u8, min) };
            }
        }
    }

    return .{ .dynamic_range = .{
        .default_value = try alloc.dupe(u8, def_str),
        .min = if (min_str) |s| try alloc.dupe(u8, s) else null,
        .max = if (max_str) |s| try alloc.dupe(u8, s) else null,
    } };
}

fn get_int_number(element: XmlParser.Element, alloc: std.mem.Allocator) anyerror!Ref_type {
    const min_str = element.attr("Min");
    const max_str = element.attr("Max");
    const def_str = element.attr("DefaultValue") orelse return error.InvalidNumber;

    return parser_number(def_str, min_str, max_str) catch try into_dynamic_range(def_str, min_str, max_str, alloc);
}

fn parser_number(def_str: []const u8, min_str: ?[]const u8, max_str: ?[]const u8) anyerror!Ref_type {
    const min = if (min_str) |str| try std.fmt.parseInt(u32, str, 10) else 0;
    const max = if (max_str) |str| try std.fmt.parseInt(u32, str, 10) else std.math.maxInt(u32);
    const def = try std.fmt.parseInt(u32, def_str, 10);

    return if (min == max) .{
        .fixed_integer = min,
    } else .{ .integer_range = .{
        .min = min,
        .max = max,
        .default_value = def,
    } };
}

fn get_float_number(element: XmlParser.Element, alloc: std.mem.Allocator) anyerror!Ref_type {
    const min_str = element.attr("Min");
    const max_str = element.attr("Max");
    const def_str = element.attr("DefaultValue") orelse return error.InvalidNumber;
    return parser_float(def_str, min_str, max_str) catch try into_dynamic_range(def_str, min_str, max_str, alloc);
}

fn parser_float(def_str: []const u8, min_str: ?[]const u8, max_str: ?[]const u8) anyerror!Ref_type {
    const min = if (min_str) |str| try std.fmt.parseFloat(f32, str) else 0;
    const max = if (max_str) |str| try std.fmt.parseFloat(f32, str) else std.math.floatMax(f32);
    const def = try std.fmt.parseFloat(f32, def_str);

    return if (min == max) .{
        .fixed_float = min,
    } else .{ .float_range = .{
        .min = min,
        .max = max,
        .default_value = def,
    } };
}

fn get_list(element: XmlParser.Element, alloc: std.mem.Allocator) anyerror!Ref_type {
    var values = std.ArrayList(List_Item).init(alloc);
    errdefer values.deinit();
    var list: List = undefined;

    const def = element.attr("DefaultValue") orelse return error.InvalidList;

    for (element.children()) |ch| {
        switch (ch.v()) {
            .element => |item| {
                const tag = item.tag_name.slice();
                if (std.mem.eql(u8, tag, "PossibleValue")) {
                    const value = item.attr("Value") orelse return error.InvalidListItem;
                    const comment = item.attr("Comment");
                    const semaphore = item.attr("Semaphore");

                    const n_val: ?f32 = if (comment) |c| std.fmt.parseFloat(f32, c) catch null else null;

                    try values.append(.{
                        .name = try alloc.dupe(u8, value),
                        .value = n_val,
                        .semaphore = if (semaphore) |s| try alloc.dupe(u8, s) else null,
                    });
                }
            },
            else => {},
        }
    }

    //some ref marked as list does not have multiple possible values, treat as single item
    if (values.items.len == 0) {
        return Ref_type{ .single_item = .{
            .name = try alloc.dupe(u8, def),
            .value = null,
            .semaphore = null,
        } };
    } else if (values.items.len == 1) {
        if (std.mem.eql(u8, values.items[0].name, def)) {
            return Ref_type{ .single_item = values.items[0] };
        }
    }

    //if we have no default value and the list size is greater than 1, add the default value to the list

    list.default_name = try alloc.dupe(u8, def);
    list.itens = try values.toOwnedSlice();
    return .{ .list = list };
}
