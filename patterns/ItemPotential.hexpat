import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct ItemPotential {
    u32 ItemPotentialId; // found in item
    u32 SkillId1;
    u32 SkillId2;
    u32 SkillId3;
    u32 SkillId4;
    u32 SkillId5;
    u32 EffectId1;
    u32 EffectId2;
    u32 EffectId3;
    u32 EffectId4;
    u32 EffectId5;
} [[format("format_potential")]];
fn format_potential(ref auto item) {
    return std::format("{:08X}", item.PotentialId);
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    ItemPotential Object[ObjectCount];
};

FullFile File @ 0x00;