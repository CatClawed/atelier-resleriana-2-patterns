import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct GimTreasure {
    u32 TreasureId;
    u32 Unknown1;
    u32 Unknown2; // always 0
    u32 Unknown3; // 0 - 3
    u32 Unknown4;
    u32 ItemId; // mostly doesn't exist
    u32 MaybeIndex; // 0 doesn't exist?
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.Unknown4;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    GimTreasure Treasure[ObjectCount];
};

FullFile File @ 0x00;
