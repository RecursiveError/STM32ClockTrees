pub const MCU_Info = struct {
    name: []const u8,
    clock_ref_file_union: []const u8,
    extra_data: []const []const u8,
};

//Clock Types
pub const Clock_Tree = struct {
    nodes: []const Clock_Node,
    references: []const Reference,
    extra_flags: []const []const u8,
    config_ref_names: []const []const u8,
};

pub const Clock_Node = struct {
    name: []const u8,
    node_type: []const u8,
    reference: []const u8,
    enable_flag: ?[]const u8,
    variants: []const Clock_Node_Variant,
};

pub const Clock_Node_Variant = struct {
    expr: ?[]const u8,
    inputs: []const Clock_Node_Input,
    outputs: []const []const u8,
};

pub const Clock_Node_Input = struct {
    source: []const u8,
    source_ref: ?[]const u8,
};

//Ref Types
pub const Reference = struct {
    ref_name: []const u8,
    variants: []Ref_variant,
};

pub const Ref_variant = struct {
    expr: ?[]const u8,
    ref: Ref_type,
};

pub const Ref_type = union(enum) {
    fixed_integer: u32,
    fixed_float: f32,
    fixed_expr: []const u8,
    integer_range: Integrer_Range,
    float_range: Float_Range,
    dynamic_range: Dynamic_Range,
    list: List,
    single_item: List_Item,
};

pub const Integrer_Range = struct {
    default_value: u32,
    min: u32,
    max: u32,
};

pub const Float_Range = struct {
    default_value: f32,
    min: f32,
    max: f32,
};

//Dynamic range uses expressions to define min, max and default values insted of fixed numbers
pub const Dynamic_Range = struct {
    default_value: []const u8,
    min: ?[]const u8,
    max: ?[]const u8,
};

pub const List = struct {
    default_name: []const u8,
    itens: []List_Item,
};

pub const List_Item = struct {
    name: []const u8,
    value: ?f32, //not all list items have asscoiated values
    semaphore: ?[]const u8, //not all list items have asscoiated semaphores
};
