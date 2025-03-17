pub const ReferenceNumber = struct {
    default: usize,
    max: usize,
    min: usize,
};

pub const ReferenceNumberList = struct {
    default: f32,
    list: []const f32,
};

pub const ReferenceInput = struct {
    DefaultInput: []const u8,
};

pub const ReferenceValue = union(enum) {
    NoReference: void,
    FixedNumber: usize,
    Number: ReferenceNumber,
    NumberList: ReferenceNumberList,
    Input: ReferenceInput,
};

pub const Output = struct {
    to: []const u8,
};

pub const Input = struct {
    from: []const u8,
};

pub const Condition = struct {
    expr: []const u8,
};

pub const Sources = union(enum) {
    output: Output,
    input: Input,
    condition: Condition,
};

pub const Element = struct {
    name: []const u8,
    Elementtype: []const u8,
    sources: []Sources,
    reference: ReferenceValue,
};

pub const Tree = struct {
    name: []const u8,
    element: []Element,
};
