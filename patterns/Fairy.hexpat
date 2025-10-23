import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct Fairy {
    u32 FairyId;
    u32 ShopFairyId;
    u32 MessageId;
    u32 Unknown1[6];
    u32 SomeNpcThingMaybe[2];
    u32 CharaId;
    u32 FairyBufAssignId;
    u32 FairyRndEventId;
    u32 Flag;
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.Numbers;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    Fairy Object[ObjectCount];
};

FullFile File @ 0x00;