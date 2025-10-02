import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

// Dimensional Path I guess?
struct DungeonBase {
    u32 DungeonBaseId;
    u32 Index; // last one seems dummy, 1'd out
    u32 DungeonNameId; // message
    u32 Unknown1[3];
    u32 Numbers1[3];
    u32 Unknown2[4]; // 0 and 2 are same, 1 and 3 are same
    u32 Unknown3;
    u32 Unknown4;
    u32 BonusStringId; // message
    u32 Numbers2[10]; // last two may be flags
    u32 Unknown5;
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.BonusStringId;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    DungeonBase Object[ObjectCount];
};

FullFile File @ 0x00;