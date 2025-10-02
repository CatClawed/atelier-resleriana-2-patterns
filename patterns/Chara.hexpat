import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct Chara {
    u32 CharaId;
    u32 Index;
    u32 Unknown[16];
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.Unknown;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    Chara Object[ObjectCount];
};

FullFile File @ 0x00;