import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct RecipeChange {
    u32 RecipeChangeId;
    u32 RecipeId1;
    u32 RecipeID2;
    u32 ItemId;
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.ItemId;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    RecipeChange Object[ObjectCount];
};

FullFile File @ 0x00;