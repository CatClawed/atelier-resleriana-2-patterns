import type.base;
import std.io;

struct Header {
    u32 Magic; // 0x0B
    u32 Count;
    u32 Unknown[22];
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
    Header header;
    ItemColorType ColorType[header.Count];
};

FullFile file @ 0x00;