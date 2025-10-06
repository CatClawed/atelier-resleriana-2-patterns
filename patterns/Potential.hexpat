import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct Effect {
    u32 EffectId;
    u32 Flag;
    u32 Index;
    u32 EffectNameId;
    u32 EffectDescId;
    u32 CombatTag; // damage or heal
    u32 ExplorationTag; // exp, walk faster, etc
    u32 AlwaysZero;
    u32 ValueTag0;
    u32 ValueTag1;
    u32 ValueTag2;
    u32 ValueTag3;
    s32 Value0_1;
    s32 Value1_1;
    s32 Value2_1;
    s32 Value3_1;
    s32 Value0_2;
    s32 Value1_2;
    s32 Value2_2;
    s32 Value3_2;
} [[format("format_flavortext")]];
fn format_flavortext(ref auto item) {
    // return "";
    return item.Value2_1;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    Effect Object[ObjectCount];
};

FullFile File @ 0x00;