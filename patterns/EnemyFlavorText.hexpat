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
    u32 FlavorTextId;
    u32 FlavorTextStringId1; // eg. "*Sip* Well, it's just normal water"
    u32 FlavorTextStringId2;
    u32 FlavorTextStringId3;
    u32 FlavorTextStringId4;
    u32 UnknownId5; // character for line 1
    u32 UnknownId6; // character for line 1
    u32 UnknownId7; // character for line 2
    u32 UnknownId8; // character for line 2
    u32 UnknownId9; // character for line 3
    u32 UnknownId10; // character for line 3
    u32 UnknownId11; // character for line 4
    u32 UnknownId12; // character for line 4
    u32 UnknownId13; // character for line 1
    u32 UnknownId14; // character for line 2
    u32 UnknownId15; // character for line 3
    u32 UnknownId16; // character for line 4
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

FullFile File @ 0x00;