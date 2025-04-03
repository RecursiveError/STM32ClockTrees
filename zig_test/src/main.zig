const std = @import("std");
const comptimePrint = std.fmt.comptimePrint;

const Limit = struct {
    min: f32 = 0,
    max: f32,
};

const MUL = struct {
    mul_value: f32,
    limit: ?Limit = null,
    pub fn get(self: *const MUL, value: f32) f32 {
        return value * self.mul_value;
    }
};

const Source = struct {
    value: f32,
    limit: ?Limit = null,
};

const MulFrac = struct {
    mul_value: f32,
    limit: ?Limit = null,
    pub fn get(self: *const MulFrac, value: f32, frac: f32, max: f32) f32 {
        return value * (self.mul_value + (frac / max));
    }
};

const DIV = struct {
    div_value: f32,
    limit: ?Limit = null,
    pub fn get(self: *const DIV, value: f32) f32 {
        return value / self.div_value;
    }
};

const ClockNodesTypes = union(enum) {
    source: Source,
    multi: usize,
    mul: MUL,
    mulfrac: MulFrac,
    div: DIV,
    output: ?Limit,
    frac: Source,
};

const ClockError = struct {
    recive: f32 = 0,
    limit: f32 = 0,
    node: *const ClockNode,
};

const ClockState = union(enum) {
    Ok: f32,
    Overflow: ClockError,
    Underflow: ClockError,
    NoParent: ClockError,
};

const ClockNode = struct {
    const Self = *const @This();
    name: []const u8,
    Nodetype: ClockNodesTypes,
    parents: ?[]const *const ClockNode = null,

    pub fn get(self: Self) ClockState {
        switch (self.Nodetype) {
            .source => |node| {
                return self.source(&node);
            },
            .multi => |node| {
                return self.multi(node);
            },
            .mul => |node| {
                return self.mul(&node);
            },
            .mulfrac => |node| {
                return self.mulfrac(&node);
            },
            .div => |node| {
                return self.div(&node);
            },
            .frac => |frac| {
                return self.source(&frac);
            },
            .output => |out_val| {
                return self.output(out_val);
            },
        }
    }

    pub fn get_value(self: Self) !f32 {
        switch (self.get()) {
            .Ok => |val| {
                return val;
            },
            else => return error.InvalidOutput,
        }
    }

    pub fn get_comptime(comptime self: Self) f32 {
        const ret = comptime self.get();
        switch (ret) {
            .Ok => |val| return val,
            else => |err| print_comptime_error(err),
        }
    }

    pub fn get_parent(node: *const ClockNode) ?*const ClockNode {
        if (node.parents) |parents| {
            switch (node.Nodetype) {
                .mul, .div, .mulfrac, .output => {
                    return parents[0];
                },
                .multi => |val| {
                    const index = val;
                    if (parents.len > index) {
                        return parents[index];
                    }
                },
                else => {},
            }
        }
        return null;
    }

    fn print_comptime_error(comptime err: ClockState) noreturn {
        comptime {
            const name = get_name_from_error(err);
            const error_msg = switch (err) {
                .NoParent => "No Parent list!",
                .Overflow => |data| comptimePrint("Overflow | Recive: {d} max: {d}", .{ data.recive, data.limit }),
                .Underflow => |data| comptimePrint("Underflow | Recive: {d} min: {d}", .{ data.recive, data.limit }),
                else => unreachable,
            };
            const main_msg = comptimePrint("Error on node {s} => {s}\n", .{ name, error_msg });
            switch (err) {
                .NoParent => @compileError(main_msg),
                .Overflow, .Underflow => |node| {
                    const parent = get_parent(node.node) orelse unreachable;
                    const tree = comptimePrint("TREE TRACE: {s} -> {s}: {d} <- ERROR\n\n", .{ print_tree(parent), node.node.name, node.recive });
                    @compileError(comptimePrint("{s}{s}", .{ main_msg, tree }));
                },
                else => unreachable,
            }
        }
    }

    fn get_name_from_error(err: ClockState) []const u8 {
        switch (err) {
            .NoParent, .Overflow, .Underflow => |clk| {
                return clk.node.name;
            },
            else => unreachable,
        }
    }

    fn print_tree(comptime node: *const ClockNode) []const u8 {
        if (get_parent(node)) |parent| {
            return comptimePrint("{s} -> {s}", .{ print_tree(parent), print_node_info(node) });
        }
        return comptimePrint("ROOT -> {s}", .{print_node_info(node)});
    }

    fn print_node_info(comptime node: *const ClockNode) []const u8 {
        const parent = get_parent(node) orelse node;
        const value = parent.get_value() catch unreachable;

        const type_data = switch (node.Nodetype) {
            .div => |data| comptimePrint("{d}/{d}", .{ value, data.div_value }),
            .mul => |data| comptimePrint("{d} * {d}", .{ value, data.mul_value }),
            .output, .source => comptimePrint("{d}", .{value}),
            .multi => comptimePrint("{s}", .{parent.name}),
            .mulfrac => comptimePrint("{d} * ({s})", .{ value, print_multi_frac(node) }),
            else => unreachable,
        };

        return comptimePrint("|{s}: {s}|", .{ node.name, type_data });
    }

    fn print_multi_frac(node: *const ClockNode) []const u8 {
        const mul_val = node.Nodetype.mulfrac.mul_value;
        const frac_val = node.parents.?[1].get_value() catch unreachable;
        const frac_max = node.parents.?[1].Nodetype.frac.max;
        return comptimePrint("{d} + ({d}/{d})", .{ mul_val, frac_val, frac_max });
    }

    fn limit_check(self: Self, value: f32, node_limit: ?Limit) ClockState {
        if (node_limit) |limit| {
            if (value > limit.max) {
                return .{
                    .Overflow = .{
                        .node = self,
                        .limit = limit.max,
                        .recive = value,
                    },
                };
            } else if (value < limit.min) {
                return .{
                    .Underflow = .{
                        .node = self,
                        .limit = limit.min,
                        .recive = value,
                    },
                };
            }
        }

        return .{ .Ok = value };
    }

    fn source(self: Self, node: *const Source) ClockState {
        const value = node.value;
        return self.limit_check(value, node.limit);
    }

    fn multi(self: Self, node: usize) ClockState {
        if (self.parents) |nodes| {
            if (nodes.len > node) {
                return nodes[node].get();
            }
        }
        return .{ .NoParent = .{ .node = self } };
    }

    fn mul(self: Self, node: *const MUL) ClockState {
        if (self.parents) |parents| {
            const value = node.mul_value;
            const limit = self.limit_check(value, node.limit);
            switch (limit) {
                .Ok => {
                    const input = parents[0].get();
                    switch (input) {
                        .Ok => |from_input| {
                            return .{ .Ok = node.get(from_input) };
                        },
                        else => {
                            return input;
                        },
                    }
                },
                else => {
                    return limit;
                },
            }
        }

        return .{ .NoParent = .{ .node = self } };
    }

    fn mulfrac(self: Self, node: *const MulFrac) ClockState {
        if (self.parents) |parents| {
            if (parents.len > 2) {
                const value = node.mul_value;
                const limit = self.limit_check(value, node.limit);
                switch (limit) {
                    .Ok => {
                        const input = parents[0].get();
                        const frac = parents[1].get();

                        switch (frac) {
                            .Ok => |from_frac| {
                                const frac_max = parents[1].Nodetype.frac.max;
                                switch (input) {
                                    .Ok => |from_input| {
                                        return .{ .Ok = node.get(
                                            from_input,
                                            from_frac,
                                            frac_max,
                                        ) };
                                    },
                                    else => return input,
                                }
                            },
                            else => return frac,
                        }
                    },
                    else => return limit,
                }
            }
        }
        return .{ .NoParent = .{ .node = self } };
    }

    fn div(self: Self, node: *const DIV) ClockState {
        if (self.parents) |parents| {
            const value = node.div_value;
            const limit = self.limit_check(value, node.limit);
            switch (limit) {
                .Ok => {
                    const input = parents[0].get();
                    switch (input) {
                        .Ok => |from_input| {
                            return .{ .Ok = node.get(from_input) };
                        },
                        else => {
                            return input;
                        },
                    }
                },
                else => {
                    return limit;
                },
            }
        }

        return .{ .NoParent = .{ .node = self } };
    }

    fn output(self: Self, limit: ?Limit) ClockState {
        if (self.parents) |parents| {
            const value = parents[0].get();
            switch (value) {
                .Ok => |ret| {
                    return self.limit_check(ret, limit);
                },
                else => return value,
            }
        }
        return .{ .NoParent = .{ .node = self } };
    }
};

const FooConfig = struct {
    foo_source: f32 = 16_000_000,
    bar_source: f32 = 8_000_000,
    mul: f32 = 2,
    div: f32 = 1,
    muilti: usize = 0,
};

const FooTree = struct {
    FooSource: ClockNode,
    BarSource: ClockNode,
    BarMul: ClockNode,
    FooBarMultiplexor: ClockNode,
    Divisor: ClockNode,
    ClockOutput: ClockNode,
    alloc: ?std.mem.Allocator = null,

    fn init(alloc: std.mem.Allocator) !*FooTree {
        const root = try alloc.create(FooTree);
        var mul_parents = try alloc.alloc(*const ClockNode, 1);
        var foobarmulti_parents = try alloc.alloc(*const ClockNode, 3);
        var div_parents = try alloc.alloc(*const ClockNode, 1);
        var out_parents = try alloc.alloc(*const ClockNode, 1);

        mul_parents[0] = &root.BarSource;
        foobarmulti_parents[0] = &root.FooSource;
        foobarmulti_parents[1] = &root.BarSource;
        foobarmulti_parents[2] = &root.BarMul;

        div_parents[0] = &root.FooBarMultiplexor;
        out_parents[0] = &root.Divisor;

        root.FooSource = .{
            .name = "FooSource",
            .Nodetype = .{ .source = .{ .value = 8_000_000 } },
        };

        root.BarSource = .{
            .name = "BarSource",
            .Nodetype = .{ .source = .{ .value = 16_000_000 } },
        };

        root.BarMul = .{
            .name = "BarMul",
            .Nodetype = .{ .mul = .{ .mul_value = 1} },
            .parents = mul_parents,
        };

        root.FooBarMultiplexor = .{
            .name = "FooBarMultiplexor",
            .Nodetype = .{ .multi = 0 },
            .parents = foobarmulti_parents,
        };

        root.Divisor = .{
            .name = "Divisor",
            .Nodetype = .{ .div = .{ .div_value = 2 } },
            .parents = div_parents,
        };

        root.ClockOutput = .{
            .name = "CLKOutput",
            .Nodetype = .{ .output = .{ .max = 40_000_000 } },
            .parents = out_parents,
        };

        root.alloc = alloc;

        return root;
    }

    fn deinit(self: *const @This()) void {
        if(self.alloc)|alloc|{
            alloc.
        }
    }

    fn comptime_init(comptime config: FooConfig) FooTree {
        const FooSource: ClockNode = .{
            .name = "FooSource",
            .Nodetype = .{ .source = .{ .value = 8_000_000 } },
        };

        const BarSource: ClockNode = .{
            .name = "BarSource",
            .Nodetype = .{ .source = .{ .value = config.bar_source, .limit = .{ .max = 123, .min = 1234 }, } },
        };

        const BarMul: ClockNode = .{
            .name = "BarMul",
            .Nodetype = .{ .mul = .{ .mul_value = config.mul } },
            .parents = &[_]*const ClockNode{&BarSource},
        };

        const FooBarMultiplexor: ClockNode = .{
            .name = "FooBarMultiplexor",
            .Nodetype = .{ .multi = config.muilti },
            .parents = &[_]*const ClockNode{ &FooSource, &BarSource, &BarMul },
        };

        const Divisor: ClockNode = .{
            .name = "Divisor",
            .Nodetype = .{ .div = .{ .div_value = 2 } },
            .parents = &[_]*const ClockNode{&FooBarMultiplexor},
        };

        const ClockOutput: ClockNode = .{
            .name = "CLKOutput",
            .Nodetype = .{ .output = .{ .max = 40_000_000 } },
            .parents = &[_]*const ClockNode{&Divisor},
        };

        return .{
            .FooSource = FooSource,
            .BarSource = BarSource,
            .BarMul = BarMul,
            .FooBarMultiplexor = FooBarMultiplexor,
            .Divisor = Divisor,
            .ClockOutput = ClockOutput,
        };
    }

    fn apply(self: *@This(), conf: FooConfig) void {
        self.BarMul.Nodetype.mul.mul_value = conf.mul;
        self.FooBarMultiplexor.Nodetype.multi = conf.muilti;
    }
};

const compFoo = FooTree.comptime_init(.{ .mul = 12, .muilti = 2 });
const out3 = compFoo.ClockOutput.get_comptime();
pub fn main() !void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}).init;
    const foo = try FooTree.init(gpa.allocator());
    const out = try foo.ClockOutput.get_value();
    foo.apply(.{
        .muilti = 2,
        .mul = 4,
    });
    const out2 = foo.ClockOutput.get_value() catch 0;
    std.debug.print("out: {d}Hz\n", .{out});
    std.debug.print("out: {d}Mhz\n", .{out2});
    std.debug.print("out: {d}Mhz\n", .{out3});
}
