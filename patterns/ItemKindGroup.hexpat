import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct ItemKindGroup {
    u32 ItemKindGroupId;
    u32 UnknownId1;
    u32 UnknownId2;
} [[format("format_itemkindgroup")]];
fn format_itemkindgroup(ref auto item) {
    // return "";
    return std::format("{} ({}, {})", item.ItemKindGroupId, item.UnknownId1, item.UnknownId2);
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];
    
    Property Properties[PropertyCount];
    ItemKindGroup Object[ObjectCount];
};

FullFile File @ 0x00;