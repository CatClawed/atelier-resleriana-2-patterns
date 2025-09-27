import type.base;
import std.io;

struct Header {
    u32 Magic; // 0x0E
    u32 Count;
    u32 Unknown[4];
};

struct ItemKind {
    u32 ItemKindId;
    u32 UnknownId;
} [[format("format_itemkind")]];
fn format_itemkind(ref auto item) {
    // return "";
    return std::format("{} - {}", item.ItemKindId, item.UnknownId);
};

struct FullFile {
    Header header;
    ItemKind ItemKinds[header.Count];
};

FullFile file @ 0x00;