import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct ItemKind {
    u32 ItemKindId;
    u32 OtherItemKindId; // item kind or item kind group
} [[format("format_itemkind")]];
fn format_itemkind(ref auto item) {
    // return "";
    return std::format("{} - {}", item.ItemKindId, item.OtherItemKindId);
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];
    
    Property Properties[PropertyCount];
    ItemKind Object[ObjectCount];
};

FullFile File @ 0x00;