import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct GimEnemy {
    u32 GimEnemyId;
    u32 Flag1;
    u32 BattleTurnPanelLoopId;
    u32 BattleEnemyPlacementPatternId;
    u32 SomeBgmId[3];
    u32 Flag2;
    u32 BattleEventId;
    u32 EnemyDataBaseId1;
    u32 Number1;
    u32 EnemyDataBaseId2;
    u32 Number2; // level?
    u32 EnemyDataBaseId3;
    u32 Number3;
    u32 EnemyDataBaseId4;
    u32 Number4;
    u32 EnemyDataBaseId5;
    u32 Number5;
    u32 Flag3;
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.EnemyDataBaseId3;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    GimEnemy Object[ObjectCount];
};

FullFile File @ 0x00;