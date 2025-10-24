import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct Terminology {
    u32 TerminologyId;
    u32 Index;
    u32 MessageNameId;
    u32 TerminologyCategoryId;
    u32 UnknownId[2];
    u32 QuestChapterId;
    u32 MessageDescriptionId[4];
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.MessageDescriptionId;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    Terminology Object[ObjectCount];
};

FullFile File @ 0x00;