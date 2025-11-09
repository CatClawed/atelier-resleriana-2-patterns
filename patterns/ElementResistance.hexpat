import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct ElementResistance {
    u32 ElementResistanceId;
    s32 Physical;
    s32 Magic;
    s32 Fire;
    s32 Ice;
    s32 Air;
    s32 Bolt;
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.Numbers;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    ElementResistance Object[ObjectCount];
};

FullFile File @ 0x00;