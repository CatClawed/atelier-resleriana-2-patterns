import type.base;
import std.io;

struct Header {
    u32 Magic; // 0x0E
    u32 Count;
    u32 Unknown[28];
};

struct ItemFlavorText {
    u32 FlavorTextId;
    u32 ItemId;
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
} [[format("format_flavortext")]];
fn format_flavortext(ref auto item) {
    // return "";
    return item.UnknownId16;
};

struct FullFile {
    Header header;
    ItemFlavorText FlavorTexts[header.Count];
};

FullFile file @ 0x00;