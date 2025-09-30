import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct RecipeOpenChara {
    u32 RecipeOpenCharaId;
    u32 Unknown1;
    u32 Unknown2;
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.RecipeDerivationMapId;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    RecipeOpenChara Object[ObjectCount];
};

FullFile file @ 0x00;