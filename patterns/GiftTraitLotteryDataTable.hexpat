import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct GiftTraitLotteryDataTable {
    u32 GiftTraitLotteryDataTableId;
    u32 Numbers1[3]; // 1 to 100, 0 to 20, 0 to 10
    u32 GiftTraitTableId1;
    u32 GiftTraitTableId2; // sometimes 0
    u32 GiftTraitTableId3;
    u32 GiftTraitTableId4; // usually 0
    u32 GiftTraitTableId5; // usually 0
    u32 Numbers2[5]; // No higher than 7?
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.GiftTraitTableId5;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    GiftTraitLotteryDataTable Object[ObjectCount];
};

FullFile file @ 0x00;