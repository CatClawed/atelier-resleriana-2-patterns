import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct BattleCondition {
    u32 BattleConditionId;
    u32 SkillTraitId;
    u32 Number1[2];
    u32 Unknown1[4];
    s32 Number2[2];
    u32 Unknown2[16];
    u32 Number3[2];
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.Unknown2;
};


struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    BattleCondition Object[ObjectCount];
};

FullFile File @ 0x00;