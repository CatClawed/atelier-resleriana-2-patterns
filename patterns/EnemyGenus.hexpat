import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct EnemyGenus {
    u32 EnemyGenusId;
    u32 Number[8]; // four 100s, four 0s
    float Float[6];
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.Float;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    EnemyGenus Object[ObjectCount];
};

FullFile file @ 0x00;