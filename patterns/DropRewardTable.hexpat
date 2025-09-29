import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct DropRewardTable {
    u32 DropRewardTableId;
    u32 Unknown1[5]; // Either zero or the same number
    u32 Unknown2[5]; // this one has diversity
    u32 Values[10]; // some values one'd out
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.Unknown2;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    DropRewardTable Object[ObjectCount];
};

FullFile file @ 0x00;