import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct TraitBase {
    u32 TraitBaseId;
    u32 Unknown1; // three or so values?
    u32 Unknown2; // usually 1749388575
    u32 Unknown3; // nullable
    u32 Unknown4; // nullable
    u32 Flag1;
    u32 Always5;
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return std::format("{} - {}", item.Unknown1, item.Unknown2);
};


struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    TraitBase Object[ObjectCount];
};

FullFile file @ 0x00;