import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct TraitMix {
    u32 TraitMixId;
    u32 Trait1;
    u32 Trait2;
    u32 Trait3; // the result probably
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return std::format("{} - {} - {}", item.Trait1, item.Trait2, item.Trait3);
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    TraitMix Object[ObjectCount];
};

FullFile file @ 0x00;