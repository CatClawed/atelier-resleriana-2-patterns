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
    u32 GiftIds[5];
    s32 Flags[5];
    s32 Values[5];
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.Values;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    DropRewardTable Object[ObjectCount];
};

FullFile File @ 0x00;