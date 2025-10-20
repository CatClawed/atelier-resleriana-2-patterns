import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct ElementResistance {
    u32 ElementResistanceId;
    s32 ElemRes1;
    s32 ElemRes2;
    s32 ElemRes3;
    s32 ElemRes4;
    s32 ElemRes5;
    s32 ElemRes6;
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.Numbers;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    ElementResistance Object[ObjectCount];
};

FullFile File @ 0x00;