import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct EnemyFlavorText {
    u32 EnemyFlavorTextId;
    u32 FlavorTextStringId1; // eg. "*Sip* Well, it's just normal water"
    u32 FlavorTextStringId2;
    u32 FlavorTextStringId3;
    u32 FlavorTextStringId4;
    u32 Unknown[12];
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.Unknown;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    EnemyFlavorText Object[ObjectCount];
};

FullFile file @ 0x00;