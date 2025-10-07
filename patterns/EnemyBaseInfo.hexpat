import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct EnemyBaseInfo {
    u32 EnemyBaseInfoId;
    u32 Unknown1[2];
    u32 EnemyGenusId;
    u32 EnemyKindId; // often just a copy of the above
    u32 FlavorTextId;
    u32 Unknown2[8];
    float Floats1[2];
    u32 GiftColorId;
    u32 NameStringId;
    u32 EnemyGenusId2; // butwhy
    u32 EnemySizeTypeId;
    u32 Flag;
    float Floats2[6];
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.EnemyGenusId2;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    EnemyBaseInfo Object[ObjectCount];
};

FullFile File @ 0x00;