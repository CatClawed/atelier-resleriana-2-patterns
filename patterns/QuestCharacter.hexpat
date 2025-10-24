import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct QuestCharacter {
    u32 QuestCharacterId;
    u32 CharaId;
    u32 UnknownId[2];
    u32 UnknownTerminologyCharId[2];
    u32 UnknownCharId2[2];
    u32 PlaybleCharThingsIGuess[6];
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.UnknownId;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    QuestCharacter Object[ObjectCount];
};

FullFile File @ 0x00;