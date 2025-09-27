import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
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
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];
    
    Property Properties[PropertyCount];
    ItemCategory Object[ObjectCount];
};

FullFile File @ 0x00;