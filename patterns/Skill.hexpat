import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct Skill {
    u32 SkillId;
    u32 SkillNameId;
    u32 SkillDescId;
    u32 AlwaysZero1[2];
    u32 Unknown1[4];
    s32 Numbers1[4];
    u32 Unknown2[8];
    s32 Power1;
    u32 AlwaysZero2;
    s32 Values1[14];
    s32 Power2;
    u32 AlwaysZero3;
    s32 Values2[14];
    //u32 Numbers2[32];
    u32 Unknown3[14];
    u32 AlwaysZero4[2];
    u32 Number;
    u32 Flag;
    u32 Index;
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.Values1;
};


struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    Skill Object[ObjectCount];
};

FullFile File @ 0x00;