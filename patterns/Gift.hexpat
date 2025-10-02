import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct Gift {
    u32 GiftId;
    u32 ItemId;
    u32 Numbers[2];
    u32 TraitId1;
    u32 TraitId2;
    u32 AlwaysZero;
    u32 Unknown1;
    u32 Unknown2; // Enemybaseinfo, itemcolortype refer to
    u32 Unknown3;
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.Unknown1;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    Gift Object[ObjectCount];
};

FullFile File @ 0x00;