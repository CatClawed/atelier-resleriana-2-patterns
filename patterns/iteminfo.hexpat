import type.base;
import std.io;

struct Header {
    u32 Magic; // 0x0E
    u32 Count;
    u32 Unknown[24];
};

struct ItemInfo {
    u32 Unknown1;
    u32 Unknown2;
    u32 Unknown3;
    u32 Unknown4; // some string id, either empty or invalid
    u32 Unknown5;
    u32 ItemKindId;
    u32 Unknown7; // flags? 0 or 63
    u32 Unknown8;
    u32 Unknown9;
    u32 Unknown10;
    u32 Unknown11;
    u32 Unknown12;
    u32 Unknown13;
} [[format("format_iteminfo")]];
fn format_iteminfo(ref auto item) {
    // return "";
    return item.Unknown1;
};

struct FullFile {
    Header header;
    ItemInfo FlavorTexts[header.Count];
};

FullFile file @ 0x00;