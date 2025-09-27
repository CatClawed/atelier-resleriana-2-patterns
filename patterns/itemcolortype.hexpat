import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct ItemColorType {
    u32 ItemColorTypeId;
    u32 Unknown2; // the same for most entries
    u32 Unknown3;
    u32 Unknown4; // the same for most entries
    u32 Unknown5;
    u32 Unknown6; // the same for most entries
    u32 Unknown7;
    u32 Unknown8;
    u32 Unknown9;
    u32 Unknown10;
    u32 Unknown11;
} [[format("format_colortype")]];
fn format_colortype(ref auto item) {
    // return "";
    return item.ItemColorTypeId;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];
    
    Property Properties[PropertyCount];
    ItemColorType Object[ObjectCount];
};

FullFile File @ 0x00;