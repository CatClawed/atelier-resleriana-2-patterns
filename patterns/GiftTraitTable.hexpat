import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct GiftTraitTable {
    u32 GiftTraitTableId;
    u32 Numbers1[2]; // first is possibly a flag
    u32 TraitIds[10];
    u32 Numbers2[10];
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.TraitIds[2];
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    GiftTraitTable Object[ObjectCount];
};

FullFile File @ 0x00;