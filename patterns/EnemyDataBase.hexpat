import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct EnemyDataBase {
    u32 EnemyDataBaseId;
    u32 EnemyBaseInfoId;
    u32 EnemyLibraryInfoId;
    u32 Flag1; // always 0 or 3
    u32 ElementResistanceId; // clustered together
    u32 DisorderProbabilityId; // probably this id. clustered together, almost 100% similar to p1revious value but different values, at least one outlier7
    u32 Integer[4]; // 0, 1: 500 or 700; 2: 250 or 250; 3: varies
    u32 Flag2; // always 1
    float Decimal1[4];
    u32 Unknown4;
    u32 BattleAiSetId1; // probably the ID
    u32 DropRewardTableId;
    u32 DropGiftTableId;
    u32 Integer2[7];
    float Decimal2[4]; // Always 1 or 2, then 0 1 1.5
    u32 Integer3[2]; // 0 or 100
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.Unknown1;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    EnemyDataBase Object[ObjectCount];
};

FullFile File @ 0x00;