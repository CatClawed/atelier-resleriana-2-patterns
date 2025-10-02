import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct EnemyGenusStatus {
    u32 EnemyGenusStatusId;
    u32 Number[4];
    float Float[10];
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.Number;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    EnemyGenusStatus Object[ObjectCount];
};

FullFile File @ 0x00;