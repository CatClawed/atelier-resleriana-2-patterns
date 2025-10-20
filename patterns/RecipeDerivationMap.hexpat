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
    u32 RecipeOpenCharaId;
    u32 RecipeDerivationTypeId;
    u32 RecipeId; // 0 when ItemId exists
    u32 ItemId; // 0 when RecipeId exists
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return std::format("{} - {}", item.RecipeId, item.ItemId);
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    RecipeDerivationMap Object[ObjectCount];
};

FullFile File @ 0x00;