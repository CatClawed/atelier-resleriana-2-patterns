import type.base;
import std.io;

// Seems to specify text for basic actions

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct GimmickType {
    u32 GimmickTypeId;
    u32 MessageId;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    GimmickType Object[ObjectCount];
};

FullFile File @ 0x00;