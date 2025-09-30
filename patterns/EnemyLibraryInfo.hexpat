import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct EnemyLibraryInfo {
    u32 EnemyLibraryInfoId;
    u32 Number[4];
    u32 Unknown;
    u32 Number2; // index-ish
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.Number2;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    EnemyLibraryInfo Object[ObjectCount];
};

FullFile file @ 0x00;