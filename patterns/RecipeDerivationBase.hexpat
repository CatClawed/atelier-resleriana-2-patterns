import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct RecipeDerivationBase {
    u32 RecipeDerivationBaseId;
    u32 Index;
    u32 RecipeId;
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.RecipeId2;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    RecipeDerivationBase Object[ObjectCount];
};

FullFile File @ 0x00;