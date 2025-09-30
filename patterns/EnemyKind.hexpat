import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct EnemyKind {
    u32 EnemyKindId;
    u32 MessageId;
    u32 Index;

} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.Index;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    EnemyKind Object[ObjectCount];
};

FullFile file @ 0x00;