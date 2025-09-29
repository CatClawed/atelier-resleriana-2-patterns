import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct MixResult {
    u32 MixResultId;
    u32 ItemId;
    u32 Unknown[8];
    u32 Number; // up to 100
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.Number;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    MixResult Object[ObjectCount];
};

FullFile file @ 0x00;