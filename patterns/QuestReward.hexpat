import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct QuestReward {
    u32 QuestRewardId;
    u32 MessageId; // notification
    u32 Numbers[20];
    u32 GiftId[3];
    u32 Numbers2[8];
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.GiftId;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    QuestReward Object[ObjectCount];
};

FullFile File @ 0x00;