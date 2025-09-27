import type.base;
import std.io;

struct Header {
    u32 Magic; // 0x20
    u32 Count;
    u32 Unknown[64];
};

struct Item {
    u32 ItemId; // type::Hex<u32>
    u32 Index;
    u32 NameStringId;
    u32 FlavorTextId;
    u32 PossiblyBasePrice;
    u32 UnknownId2;
    u32 UnknownId3;
    u32 UnknownId4;
    u32 UnknownId5;
    u32 UnknownId6;
    u32 ItemKindId; // item kind or item kind group
    type::Bin<u32> Unknown2; // bitset of 6 bits?
    u32 CategoryId1;
    u32 CategoryId2;
    u32 CategoryId3;
    u32 CategoryId4;
    u32 UnknownId12; // similar function to id 8
    u32 UnknownId13; // same
    u32 Unknown6; // 50, 100 or 150
    u32 Unknown7; // feels like bitmap
    u32 PotentialId; // nullable
    u32 UnknownSet[7]; // always zero
    type::Hex<u32> UnknownId15; // kinda weird, idk
    type::Hex<u32> UnknownId16;
    u32 Unknown8;
    u32 Unknown9;
    u32 ItemColorTypeId;
    u32 Flag4;
    u32 UnknownId18; // nullable
} [[format("format_item")]];
fn format_item(ref auto item) {
    // return std::format("{:06b}", item.Unknown2);
    return item.Flag4;
    // return std::format("{} {}", item.UnknownId8, item.UnknownId9);
    // return std::format("{:06b}", item.Unknown7);
};

struct FullFile {
    Header header;
    Item Items[header.Count];
};

FullFile file @ 0x00;