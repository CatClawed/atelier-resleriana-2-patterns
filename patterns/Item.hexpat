import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct Item {
    u32 ItemId; // type::Hex<u32>
    u32 Index;
    u32 NameStringId;
    u32 FlavorTextId;
    u32 PossiblyBasePrice;
    u32 ItemRankId;
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
    u32 GiftColorId1; // kinda weird, idk
    u32 GiftColorId2;
    u32 Unknown8;
    u32 Unknown9;
    u32 ItemColorTypeId;
    u32 Flag4;
    u32 UnknownId18; // nullable
} [[format("format_item")]];
fn format_item(ref auto item) {
    // return std::format("{:06b}", item.Unknown2);
    return item.ItemRankId;
    // return std::format("{} {}", item.UnknownId8, item.UnknownId9);
    // return std::format("{:06b}", item.Unknown7);
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    Item Object[ObjectCount];
};

FullFile File @ 0x00;