import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct ReinforceTalent {
    u32 ReinforceTalentId;
    u32 UnknownCharId;
    u32 FairyId;
    u32 Numbers1[2];
    u32 Unknown1[2];
    u32 Numbers2[3];
    u32 NameId;
    u32 TraitId;
    u32 GiftColorId1;
    u32 GiftColorId2;
    u32 Index;
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.wtf;
};


struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    ReinforceTalent Object[ObjectCount];
};

FullFile File @ 0x00;