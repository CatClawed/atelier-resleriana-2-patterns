import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct DungeonEnemyData {
    u32 DungeonEnemyDataId;
    u32 DungeonBaseId;
    u32 Numbers[10];
    u32 GimEnemyId;
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.Numbers;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    DungeonEnemyData Object[ObjectCount];
};

FullFile File @ 0x00;