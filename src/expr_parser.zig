const std = @import("std");

fn applyOperator(operators: *std.ArrayList(u8), operands: *std.ArrayList(bool)) !void {
    const op = operators.pop().?;
    if (op == '!') {
        const top = operands.pop().?;
        try operands.append(!top);
    } else {
        const right = operands.pop().?;
        const left = operands.pop().?;
        if (op == '&') {
            try operands.append(left and right);
        } else if (op == '|') {
            try operands.append(left or right);
        }
    }
}

pub fn evaluateBooleanExpression(expr: []const u8, values: std.StringHashMap(bool), allocator: std.mem.Allocator) !bool {
    var operands = std.ArrayList(bool).init(allocator);
    var operators = std.ArrayList(u8).init(allocator);
    defer operands.deinit();
    defer operators.deinit();

    var i: usize = 0;
    while (i < expr.len) {
        const c = expr[i];

        if (std.ascii.isWhitespace(c)) {
            i += 1;
            continue;
        }
        switch (c) {
            '!', '&', '|' => {
                try operators.append(c);
            },
            '(' => {
                try operators.append(c);
            },
            ')' => {
                while (operators.items.len > 0 and operators.items[operators.items.len - 1] != '(') {
                    try applyOperator(&operators, &operands);
                }
                _ = operators.pop().?;
            },
            else => {
                // Read variable name
                var var_name = std.ArrayList(u8).init(allocator);
                defer var_name.deinit();
                while (i < expr.len and (std.ascii.isAlphanumeric(expr[i]) or expr[i] == '_')) {
                    try var_name.append(expr[i]);
                    i += 1;
                }
                i -= 1; // Adjust for loop increment

                const var_str = try var_name.toOwnedSlice();
                defer allocator.free(var_str);
                const str_slice = if (std.mem.indexOf(u8, var_str, "_Exist")) |idx| var_str[0..idx] else var_str;

                if (values.get(str_slice)) |val| {
                    try operands.append(val);
                } else {
                    try operands.append(false);
                }
            },
        }

        i += 1;
    }

    while (operators.items.len > 0) {
        try applyOperator(&operators, &operands);
    }

    return operands.pop().?;
}
