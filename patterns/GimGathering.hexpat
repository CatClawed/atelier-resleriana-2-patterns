import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct GimGathering {
    u32 GimGatheringId;
    u32 Always2;
    u32 Probability[3]; // 25, 35, 40
    u32 Unknown1[6];
    u32 ExploreEquipTypeId;
    u32 Unknown2[2];
    u32 GiftId1;
    u32 GiftId2;
    u32 GiftId3;
    float Floats[2];
    u32 ItemRankId;
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.Unknown2;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    GimGathering Object[ObjectCount];
};

FullFile File @ 0x00;