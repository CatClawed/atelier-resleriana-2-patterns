import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct Dlc {
    u32 DlcId;
    u32 Flag;
    u32 MessageId1;
    u32 MessageId2;
    u32 MessageId3;
    u32 Number;
    u32 Unknown;
    u32 MessageId4;
} [[format("format_item")]];
fn format_item(ref auto item) {
    return item.Flag;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    Dlc Object[ObjectCount];
};

FullFile File @ 0x00;