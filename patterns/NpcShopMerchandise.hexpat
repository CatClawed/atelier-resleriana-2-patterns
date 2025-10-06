import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct NpcShopMerchandise {
    u32 NpcShopMerchandiseId;
    u32 Unknown1;
    u32 ItemId;
    u32 GiftId;
    u32 Price;
    u32 Limited;
    u32 Shop;
    u32 UnlockFlagId;
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.Unknown1;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    NpcShopMerchandise Object[ObjectCount];
};

FullFile File @ 0x00;