import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct Recipe {
    u32 RecipeId;
    u32 Index;
    u32 ItemId;
    u32 Quantity;
    u32 FlagMaybe;
    u32 Uses;
    u32 IngredientId1;
    u32 IngredientId2;
    u32 IngredientId3;
    u32 IngredientId4;
    u32 CategoryId1;
    u32 CategoryId2;
    u32 CategoryId3;
    u32 Flag;
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.Flag;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    Recipe Object[ObjectCount];
};

FullFile File @ 0x00;