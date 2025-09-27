import type.base;
import std.io;

struct Header {
    u32 Magic; // 0x02
    u32 Count;
    u32 Unknown[4];
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
    Header header;
    ItemKind ItemKinds[header.Count];
};

FullFile file @ 0x00;