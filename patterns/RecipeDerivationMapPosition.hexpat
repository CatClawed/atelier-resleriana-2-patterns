import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct RecipeDerivationMapPosition {
    u32 RecipeDerivationMapPositionId;
    u32 RecipeDerivationBaseId[5];
    u32 RecipeDerivationMapId[9];
    u32 RecipeDerivationMapArrow1[12]; // two values seem to appear
    u32 RecipeDerivationMapArrow2[14]; // usually same values, sometimes a second value
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.RecipeDerivationMapId;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    RecipeDerivationMapPosition Object[ObjectCount];
};

FullFile File @ 0x00;