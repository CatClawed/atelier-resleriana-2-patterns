import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct EnemySizeType {
    u32 EnemySizeTypeId;
    float Float;
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.Float;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    EnemySizeType Object[ObjectCount];
};

FullFile File @ 0x00;