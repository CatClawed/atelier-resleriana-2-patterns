import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct SkillTrait {
    u32 SkillTraitId;
    u32 Number;
    u32 SkillEffectId; // I hope
    u32 TraitBaseId;
    u32 AllOne;
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.Unknown3;
};


struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    SkillTrait Object[ObjectCount];
};

FullFile File @ 0x00;