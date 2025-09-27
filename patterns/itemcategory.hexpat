import type.base;
import std.io;

struct Header {
    u32 Magic; // 0x05
    u32 Count;
};

struct ItemCategory {
    u32 CategoryId;
    u32 NameStringId; // eg. "(Water)"
    u32 Flag1; // always 1 if not dummy
    u32 Flag2; // always 1 if not dummy
    u32 Index;
} [[format("format_category")]];
fn format_category(ref auto item) {
    return item.CategoryId;
};

struct FullFile {
    Header header;
    u32 Unknown[10];
    ItemCategory Categories[header.Count];
};

FullFile file @ 0x00;