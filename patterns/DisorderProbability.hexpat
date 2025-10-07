import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct AilmentResistance {
    u32 AilmentResistanceId; // I think this is ailments
    s32 Numbers[8];
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.Numbers;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    AilmentResistance Object[ObjectCount];
};

FullFile File @ 0x00;