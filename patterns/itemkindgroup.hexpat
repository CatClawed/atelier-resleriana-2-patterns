import type.base;
import std.io;

struct Header {
    u32 Magic; // 0x02
    u32 Count;
    u32 Unknown[4];
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
    Header header;
    ItemKindGroup Groups[header.Count];
};

FullFile file @ 0x00;