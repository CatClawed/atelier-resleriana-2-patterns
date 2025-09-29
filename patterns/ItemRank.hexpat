import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct ItemRank {
    u32 ItemRankId;
    u32 Number; // Up to 13, ranks do have A+ B+ etc so could be that
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return std::format("{} - {}", item.ItemRankId, item.Number);
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    ItemRank Object[ObjectCount];
};

FullFile file @ 0x00;