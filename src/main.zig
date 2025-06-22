const std = @import("std");
const XmlParser = @import("xml-parser");
const expr_parser = @import("expr_parser.zig");
const ClockTree = @import("clocktree.zig");
const Tree = ClockTree.Tree;
const Element = ClockTree.Element;
const Sources = ClockTree.Sources;
const Output = ClockTree.Output;
const Input = ClockTree.Input;
const ReferenceValue = ClockTree.ReferenceValue;
const Reference = ClockTree.Reference;

var GlobalMcu: XmlParser.Document = undefined;
var GlobalRef: XmlParser.Document = undefined;
var GlobalExtraRef: XmlParser.Document = undefined;
var GlobalDoc: XmlParser.Document = undefined;

const clock_dir_path = "/home/guilherme/STM32CubeMX/db/plugins/clock/";
const rcc_ref_path = "/home/guilherme/STM32CubeMX/db/mcu/IP/";
const mcu_dir_path = "/home/guilherme/STM32CubeMX/db/mcu/";
pub fn main() !void {
    std.log.info("This does not support advanced checks that some MCUs require\nmanual adjustments need to be made", .{});
    var mcu_dir = try std.fs.openDirAbsolute(mcu_dir_path, .{ .iterate = true });
    var iter = mcu_dir.iterate();
    while (true) {
        const file_name = iter.next() catch break;

        if (file_name) |name| {
            switch (name.kind) {
                .file => {
                    const mcu_file = name.name;
                    const mcu_name = mcu_file[0..(mcu_file.len - 4)];

                    if (check_json(mcu_name)) continue;
                    if (std.mem.indexOf(u8, mcu_file, "STM32")) |_| {
                        std.log.info("===== START {s} PARSER ====", .{mcu_name});
                        parser_from_mcu(mcu_file, &mcu_dir) catch |err| {
                            std.log.info("Fail to create ClockTree for {s} err {any}\n", .{ mcu_name, err });
                            switch (err) {
                                error.NoReference => {
                                    std.log.info("Failed to find any reference, probably the {s} uses features not yet supported", .{mcu_name});
                                },
                                else => {},
                            }
                        };
                        std.log.info("====FINISH {s} PARSER ====", .{name.name});
                    }
                },
                else => {},
            }
            continue;
        }
        break;
    }
}

fn check_json(mcu_name: []const u8) bool {
    var buf: [100]u8 = undefined;
    const json = std.fmt.bufPrint(&buf, "/home/guilherme/Desktop/XML_parser/out-json/{s}.json", .{mcu_name}) catch return false;
    const file = std.fs.cwd().openFile(json, .{}) catch {

        //zig ISSUE #2221 just jump over error file
        const jfile = std.fs.cwd().createFile(json, .{}) catch return false;
        defer jfile.close();
        return false;
    };
    defer file.close();

    return true;
}

const MCUNames = struct {
    Clock_file_name: []const u8,
    ref_file_name: []const u8,
    DIE_file_name: []const u8,
    names: std.StringHashMap(bool),
};

var corrent_mcu: *const MCUNames = undefined;

fn mcu_parser(doc: *const XmlParser.Document, alloc: std.mem.Allocator) !MCUNames {
    const Clock_file_name = doc.root.attr("ClockTree") orelse "noclock";
    var mcu = MCUNames{
        .Clock_file_name = Clock_file_name,
        .names = std.StringHashMap(bool).init(alloc),
        .DIE_file_name = "",
        .ref_file_name = undefined,
    };
    const Line = doc.root.attr("Line") orelse "noline";
    const Line2 = try alloc.alloc(u8, Line.len);

    _ = std.mem.replace(u8, Line, " ", "_", Line2);
    try mcu.names.put(Line, true);
    try mcu.names.put(doc.root.attr("Package") orelse "nopkg", true);

    for (doc.root.children()) |ch| {
        switch (ch.v()) {
            .element => |data| {
                if (std.mem.eql(u8, data.tag_name.slice(), "Die")) {
                    const text = data.children()[0].v().text.slice();
                    mcu.DIE_file_name = text;
                    try mcu.names.put(text, true);
                } else {
                    const text = data.attr("InstanceName") orelse continue;
                    try mcu.names.put(text, true);

                    if (std.mem.eql(u8, text, "RCC")) {
                        const Version = data.attr("Version") orelse "";
                        mcu.ref_file_name = Version;
                    }
                }
            },
            else => {},
        }
    }
    return mcu;
}

fn parser_from_mcu(file_name: []const u8, dir: *std.fs.Dir) !void {
    var arena_state = std.heap.ArenaAllocator.init(std.heap.page_allocator);
    defer arena_state.deinit();
    const arena = arena_state.allocator();

    const mcu_file = try dir.openFile(file_name, .{});
    GlobalMcu = try XmlParser.parse(arena, "", mcu_file.reader());
    GlobalMcu.acquire();
    const mcu = mcu_parser(&GlobalMcu, arena) catch |err| {
        GlobalMcu.release();
        return err;
    };
    GlobalMcu.release();
    corrent_mcu = &mcu;
    try create_clock_tree(mcu.Clock_file_name, mcu.ref_file_name, file_name, arena);
}

fn create_clock_tree(treename: []const u8, refname: []const u8, out_name: []const u8, alloc: std.mem.Allocator) !void {
    var clock_dir = try std.fs.openDirAbsolute(clock_dir_path, .{ .iterate = true });
    var rcc_ref_dir = try std.fs.openDirAbsolute(rcc_ref_path, .{ .iterate = true });

    var out_buffer: [500]u8 = undefined;
    const ref_name = std.fmt.bufPrint(&out_buffer, "RCC-{s}_Modes.xml", .{refname}) catch unreachable;
    std.log.info("REF FILE NAME: {s}", .{ref_name});
    const ref_file = try rcc_ref_dir.openFile(ref_name, .{});
    defer ref_file.close();

    const clock_name = std.fmt.bufPrint(&out_buffer, "{s}.xml", .{treename}) catch unreachable;
    const clock_file = try clock_dir.openFile(clock_name, .{});
    defer clock_file.close();
    const json_name = std.fmt.bufPrint(&out_buffer, "/home/guilherme/Desktop/XML_parser/out-json/{s}.json", .{out_name[0..(out_name.len - 4)]}) catch unreachable;

    try create(clock_file, ref_file, json_name, alloc);
}

fn create(clockTree: std.fs.File, RCC_Reference: std.fs.File, out_name: []const u8, alloc: std.mem.Allocator) !void {
    GlobalDoc = try XmlParser.parse(alloc, "", clockTree.reader());
    defer GlobalDoc.deinit();

    GlobalRef = try XmlParser.parse(alloc, "", RCC_Reference.reader());
    defer GlobalRef.deinit();
    try RCC_Reference.seekTo(0);

    GlobalExtraRef = try XmlParser.parse(alloc, "", RCC_Reference.reader());
    defer GlobalExtraRef.deinit();

    GlobalDoc.acquire();
    defer GlobalDoc.release();

    for (GlobalDoc.root.children()) |ch| {
        switch (ch.v()) {
            .element => |data| {
                const tagName = data.tag_name;
                if (std.mem.eql(u8, "Tree", tagName.slice())) {
                    const cktree = try get_tree(&data, alloc, false);
                    try tree_to_json(cktree, out_name);
                    break;
                }
            },
            else => {},
        }
    }
}
fn get_tree(doc: *const XmlParser.Element, alloc: std.mem.Allocator, is_sub_tree: bool) !*const Tree {
    const tree = try alloc.create(Tree);
    const children = doc.children();
    var elements = try alloc.alloc(Element, children.len);
    var elements_set = std.StringHashMap(void).init(alloc);
    tree.name = doc.attr("id") orelse "NoName";
    var index: usize = 0;
    for (children) |ch| {
        switch (ch.v()) {
            .element => |data| {
                if (std.mem.eql(u8, "Tree", data.tag_name.slice())) {
                    const sub_tree = try get_tree(&data, alloc, true);
                    const new_elements = sub_tree.element.len + elements.len;
                    elements = try alloc.realloc(elements, new_elements);
                    std.mem.copyForwards(Element, elements[index..], sub_tree.element);
                    index += sub_tree.element.len;
                    continue;
                }
                const new_element = get_elements(&data, alloc) catch |err| switch (err) {
                    error.ExprFail => continue,
                    else => return err,
                };
                //get the first valid Element of each nameID
                if (elements_set.contains(new_element.name)) {
                    continue;
                }

                //we need to get the last or
                try elements_set.put(new_element.name, {});
                elements[index] = new_element;
                index += 1;
            },
            else => {},
        }
    }

    if (!is_sub_tree) {
        elements = try alloc.realloc(elements, elements.len + 50);
        GlobalDoc.release();
        GlobalExtraRef.acquire();
        var nrefmap = std.StringHashMap(void).init(alloc);

        for (GlobalExtraRef.root.children()) |ch| {
            switch (ch.v()) {
                .element => |data| {
                    const group = data.attr("Group");
                    if (group) |gp| {
                        if (std.mem.eql(u8, gp, "RCC Parameters")) {
                            const name = data.attr("Name") orelse "NoName";

                            const exist = nrefmap.get(name);
                            if (exist) |_| continue;

                            GlobalExtraRef.release();
                            GlobalDoc.acquire();
                            const ref_val = try get_references(&data, "ExtraRef", name, true, alloc);
                            GlobalDoc.release();
                            GlobalExtraRef.acquire();
                            const new_element = Element{
                                .Elementtype = "ExtraRef",
                                .name = name,
                                .sources = &.{},
                                .reference = ref_val,
                                .reference_id = name,
                            };

                            elements[index] = new_element;
                            index += 1;

                            try nrefmap.put(name, {});
                        }
                    }
                },
                else => {},
            }
        }
        nrefmap.deinit();
        GlobalExtraRef.release();
        GlobalDoc.acquire();
    }
    tree.element = elements[0..index];
    return tree;
}

fn get_elements(doc: *const XmlParser.Element, alloc: std.mem.Allocator) !Element {
    var element: Element = .{
        .name = undefined,
        .Elementtype = undefined,
        .sources = undefined,
        .reference = undefined,
        .reference_id = undefined,
    };
    const children = doc.children();
    const sources = try alloc.alloc(Sources, children.len);
    element.name = doc.attr("id") orelse "NoName";
    element.Elementtype = doc.attr("type") orelse "NoType";
    var index: usize = 0;

    for (children) |ch| {
        switch (ch.v()) {
            .element => |data| {
                if (std.mem.eql(u8, data.tag_name.slice(), "Condition")) {
                    const expr_result = try check_condition(&data, alloc);
                    if (!expr_result) {
                        return error.ExprFail;
                    }
                    continue;
                }
                const new_source = try get_sources(&data);
                if (check_duplicate_sources(sources[0..index], new_source)) continue;
                sources[index] = new_source;
                index += 1;
            },
            else => {},
        }
    }

    element.sources = sources[0..index];
    errdefer std.log.info("FAIL TO FIND REF FOR {s}\n", .{element.name});
    const ref_param = doc.attr("refParameter") orelse return error.NoReference;
    element.reference = try get_references(doc, element.Elementtype, ref_param, true, alloc);
    element.reference_id = clean_ref_id(ref_param);

    return element;
}

fn clean_ref_id(id: []const u8) []const u8 {
    var seq = std.mem.splitAny(u8, id, ",/+");
    return seq.next() orelse id;
}

const GetSources = *const fn (*const XmlParser.Element) anyerror!Sources;
const SourceMap = std.StaticStringMap(GetSources).initComptime(.{
    .{ "Input", get_input },
    .{ "Output", get_output },
});

fn get_sources(doc: *const XmlParser.Element) !Sources {
    const name = doc.tag_name.slice();
    const callback = SourceMap.get(name) orelse return error.NoValidSorce;
    const ret = callback(doc) catch |err| {
        return err;
    };
    return ret;
}

fn check_duplicate_sources(sources: []Sources, to_check: Sources) bool {
    const check_str = get_source_name(to_check);
    for (sources) |source| {
        if (std.mem.eql(u8, get_source_name(source), check_str)) {
            return true;
        }
    }
    return false;
}

fn get_source_name(source: Sources) []const u8 {
    switch (source) {
        .output => |output| {
            return output.to;
        },
        .input => |input| {
            return input.from;
        },
        else => unreachable,
    }
}

fn get_input(doc: *const XmlParser.Element) anyerror!Sources {
    const from = doc.attr("from") orelse return error.NoFromInput;
    const ref_value = doc.attr("refValue");

    return Sources{
        .input = .{
            .from = from,
            .RefValue = ref_value,
        },
    };
}

fn get_output(doc: *const XmlParser.Element) anyerror!Sources {
    const to = doc.attr("to") orelse return error.NoToOutput;

    return Sources{ .output = .{ .to = to } };
}

fn check_especial_char(to_check: []const u8, chars: []const u8) bool {
    for (to_check) |check| {
        for (chars) |ch| {
            if (check == ch) return true;
        }
    }
    return false;
}
fn check_condition(doc: *const XmlParser.Element, alloc: std.mem.Allocator) !bool {
    const expr = doc.attr("Expression") orelse return error.NoExpression;
    if (check_especial_char(expr, "*/+-,=<>")) return error.InvalidExpression;
    return try expr_parser.evaluateBooleanExpression(expr, corrent_mcu.names, alloc);
}

const GetRef = *const fn (*const XmlParser.Element, *const XmlParser.Element, std.mem.Allocator) ReferenceError!ReferenceValue;
const RefMap = std.StaticStringMap(GetRef).initComptime(.{
    .{ "ExtraRef", get_ref_number },
    .{ "multiplicator", get_ref_number },
    .{ "devisor", get_ref_number },
    .{ "divisor", get_ref_number },
    .{ "output", get_ref_number },
    .{ "activeOutput", get_ref_number },
    .{ "fixedSource", get_ref_number },
    .{ "variedSource", get_ref_number },
    .{ "distinctValsSource", get_ref_number },
    .{ "fractional", get_ref_number },
    .{ "multiplicatorFrac", get_ref_number },
    .{ "multiplexor", get_multiplexer },
    .{ "xbar", get_multiplexer },
});

const ReferenceError = error{ TooDeep, NoReference, NoDefaultvalue, InvalidNumberType, InvalidInput, NoValidMultiInput } || std.mem.Allocator.Error;

fn get_references(doc: *const XmlParser.Element, elementtype: []const u8, ref: []const u8, runtime_expr: bool, alloc: std.mem.Allocator) ReferenceError![]Reference {
    var fields = std.mem.splitAny(u8, ref, ",/");
    var references = try alloc.alloc(Reference, 10);
    var ref_index: usize = 0;

    GlobalDoc.release();
    defer GlobalDoc.acquire();
    GlobalRef.acquire();
    defer GlobalRef.release();

    while (true) {
        if (fields.next()) |value| {
            const refid = value;
            for (GlobalRef.root.children()) |ch| {
                switch (ch.v()) {
                    .element => |data| {
                        if (std.mem.eql(u8, data.tag_name.slice(), "RefParameter")) {
                            const refname = data.attr("Name") orelse continue;
                            if (std.mem.eql(u8, refid, refname)) {
                                const attr = data.attr("DefaultValue") orelse return error.NoDefaultvalue;
                                references[ref_index].expr = null;
                                references[ref_index].pre_evaluated = false;
                                if (validade_ref(&data, alloc)) |expr_data| {
                                    if (std.mem.eql(u8, "Pass", expr_data)) {
                                        references[ref_index].pre_evaluated = true;
                                    } else {
                                        if (!runtime_expr) continue;
                                        references[ref_index].expr = expr_data;
                                    }
                                }
                                const ref_value = call_ref(&data, attr, doc, elementtype, alloc) catch continue;
                                references[ref_index].value = ref_value;
                                ref_index += 1;
                            }
                        }
                    },
                    else => {},
                }
            }
            if (ref_index > 0) return references[0..ref_index];
            continue;
        }
        break;
    }
    alloc.free(references);
    return error.NoReference;
}

fn validade_ref(doc: *const XmlParser.Element, alloc: std.mem.Allocator) ?[]const u8 {
    for (doc.children()) |ch| {
        switch (ch.v()) {
            .element => |data| {
                if (std.mem.eql(u8, data.tag_name.slice(), "Condition")) {
                    const ret = check_condition(&data, alloc) catch false;
                    if (ret) return "Pass";
                    return data.attr("Expression");
                }
            },
            else => {},
        }
    }

    return null;
}

fn call_ref(ref: *const XmlParser.Element, def_check: []const u8, doc: *const XmlParser.Element, elementtype: []const u8, alloc: std.mem.Allocator) ReferenceError!ReferenceValue {
    if (def_check.len > 0) {
        if (check_especial_char(def_check, "+=")) {
            GlobalRef.release();
            defer GlobalRef.acquire();
            GlobalDoc.acquire();
            defer GlobalDoc.release();
            const refs = try get_references(doc, elementtype, def_check[1..], false, alloc);
            for (refs) |ref_d| {
                if (ref_d.expr) |_| continue;
                return ref_d.value;
            }
            return error.TooDeep;
        }
    }
    const ref_call = RefMap.get(elementtype) orelse return ReferenceValue{ .NoReference = {} };
    return ref_call(doc, ref, alloc);
}

const GetNumRef = *const fn (*const XmlParser.Element, std.mem.Allocator) ReferenceError!ReferenceValue;
const RefNumMap = std.StaticStringMap(GetNumRef).initComptime(.{
    .{ "integer", get_number },
    .{ "double", get_number },
    .{ "list", get_number_list },
});

fn get_ref_number(_: *const XmlParser.Element, doc: *const XmlParser.Element, alloc: std.mem.Allocator) ReferenceError!ReferenceValue {
    const ref_type = doc.attr("Type") orelse return error.InvalidNumberType;
    const callback = RefNumMap.get(ref_type) orelse return error.InvalidNumberType;
    return try callback(doc, alloc);
}

fn get_number(doc: *const XmlParser.Element, _: std.mem.Allocator) ReferenceError!ReferenceValue {
    const min = doc.attr("Min") orelse "0";
    const max = doc.attr("Max") orelse "0";
    const default = doc.attr("DefaultValue") orelse min;

    const min_val = std.fmt.parseInt(usize, min, 10) catch 0;
    const max_val = std.fmt.parseInt(usize, max, 10) catch 0;
    const default_val = std.fmt.parseInt(usize, default, 10) catch 0;

    if (min_val == max_val) {
        return ReferenceValue{ .FixedNumber = default_val };
    }

    return ReferenceValue{
        .Number = .{
            .default = default_val,
            .max = max_val,
            .min = min_val,
        },
    };
}

fn get_number_list(doc: *const XmlParser.Element, alloc: std.mem.Allocator) ReferenceError!ReferenceValue {
    const children = doc.children();
    const DefaultID = doc.attr("DefaultValue") orelse return error.NoDefaultvalue;
    var defaultIndex: usize = 0;
    var valueList: []f32 = try alloc.alloc(f32, children.len + 1);
    var valueId: [][]const u8 = try alloc.alloc([]const u8, children.len + 1);
    var index: usize = 0;

    if (children.len == 0) {
        const num = std.fmt.parseFloat(f32, DefaultID) catch @as(f32, @floatFromInt(index));
        valueList[0] = num;
        valueId[0] = DefaultID;
        index += 1;
    } else {
        for (children) |ch| {
            switch (ch.v()) {
                .element => |data| {
                    const val = data.attr("Comment") orelse continue;
                    const val_id = data.attr("Value") orelse continue;
                    valueList[index] = std.fmt.parseFloat(f32, val) catch @floatFromInt(index);
                    valueId[index] = val_id;
                    if (std.mem.eql(u8, DefaultID, val_id)) {
                        defaultIndex = index;
                    }
                    index += 1;
                },
                else => {},
            }
        }
    }

    if (index != 0) {
        return ReferenceValue{
            .NumberList = .{
                .default = valueList[defaultIndex],
                .list = valueList[0..index],
                .id_list = valueId[0..index],
            },
        };
    } else {
        return ReferenceValue{
            .NumberList = .{
                .default = 0,
                .list = &.{0},
                .id_list = &.{"null"},
            },
        };
    }
}

fn get_multiplexer(_: *const XmlParser.Element, ref_doc: *const XmlParser.Element, _: std.mem.Allocator) ReferenceError!ReferenceValue {
    const DefaultID = ref_doc.attr("DefaultValue") orelse return error.NoDefaultvalue;
    return ReferenceValue{
        .Input = .{
            .DefaultInput = DefaultID,
        },
    };
}

fn tree_to_json(tree: *const Tree, file_name: []const u8) !void {
    const json = try std.fs.cwd().createFile(file_name, .{ .truncate = false });
    defer json.close();
    try std.json.stringify(tree, .{}, json.writer());
}
