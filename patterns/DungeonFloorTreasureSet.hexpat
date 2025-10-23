import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct DungeonFloorTreasureSet {
    u32 DungeonFloorTreasureSetId;
    u32 Numbers[5];
    u32 GimTreasureRandomDungeonId[3];
    u32 AlwaysZero[2];
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.GimTreasureRandomDungeonId;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    DungeonFloorTreasureSet Object[ObjectCount];
};

FullFile File @ 0x00;