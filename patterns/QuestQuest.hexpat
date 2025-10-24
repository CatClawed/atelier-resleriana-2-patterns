import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct QuestQuest {
    u32 QuestQuestId;
    u32 MessageNameId;
    u32 QuestChapterId;
    u32 QuestConditionSetId; // probably
    u32 UnknownId1; // relates to flavor text
    u32 Numbers[3];
    u32 MessageDescId;
    u32 RandomDungeonMissionId;
    u32 QuestRewardId;
    u32 QuestConditionSetId2;
    u32 QuestConditionSetId3;
    u32 AlwaysZero[8];
    u32 QuestConditionSetId4;
    u32 Flag;
    u32 PlayerShopRankId[2];
    u32 UnknownId2; // eventcommand or quest subtask
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.wtf;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    QuestQuest Object[ObjectCount];
};

FullFile File @ 0x00;