import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct RecipeBook {
    u32 RecipeBookId;
    u32 ItemId;
    u32 RecipeId1;
    u32 RecipeId2;
    u32 RecipeId3;
    u32 AlwaysZero[3]; // more room for IDs I guess
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.ItemId[2];
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    RecipeBook Object[ObjectCount];
};

FullFile File @ 0x00;