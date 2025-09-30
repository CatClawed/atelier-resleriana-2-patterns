import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct RecipeDerivationMap {
    u32 RecipeDerivationMapId;
    u32 UnknownId; // Referenced in flavor text, either 0 or the same two IDs
    u32 RecipeId1;
    u32 RecipeId2; // often 0
    u32 ItemId; // often 0
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.UnknownId;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    RecipeDerivationMap Object[ObjectCount];
};

FullFile file @ 0x00;