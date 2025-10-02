import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct ItemColorType {
    u32 ItemColorTypeId;
    u32 Color1;
    u32 Color2;
    u32 Color3;
    u32 Color4;
    u32 Color5;
    u32 Color6;
    u32 Color7;
    u32 Color8;
    u32 Color9;
    u32 Color10;
} [[format("format_colortype")]];
fn format_colortype(ref auto item) {
    // return "";
    return item.ItemColorTypeId;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    ItemColorType Object[ObjectCount];
};

FullFile File @ 0x00;