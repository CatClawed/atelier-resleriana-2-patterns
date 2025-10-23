import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct DungeonGimGatheringData {
    u32 DungeonGimGatheringDataId;
    u32 GimGatheringId;
    u32 DungeonBaseId;
    u32 Numbers[7];
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.Numbers;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    DungeonGimGatheringData Object[ObjectCount];
};

FullFile File @ 0x00;