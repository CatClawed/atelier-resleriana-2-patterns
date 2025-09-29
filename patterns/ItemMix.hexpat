import type.base;
import std.io;

// I def understand that I don't understand this format. There's a pattern I'm missing.

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct ItemMix {
    u32 ItemMixId;
    u32 Unknown1;
    u32 Unknown2;
    u32 Unknown3; // Sometimes same as 2
    u32 AlwaysZero;
    u32 ItemId;
    u32 ItemId2; // referenced indatabase and enemybaseinfo at least sometimes
    u32 ItemId3;
    u32 Number1; // 0, 10, or 20
    u32 Number2; // 0 or 120
    u32 Unknown7; // something referenced in enemydatabase/enemybaseinfo
    u32 Unknown8;
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return std::format("{} - {}", item.Unknown2, item.Unknown3);
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    ItemMix Object[ObjectCount];
};

FullFile file @ 0x00;