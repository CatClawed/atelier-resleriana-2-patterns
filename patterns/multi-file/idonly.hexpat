import type.base;
import std.io;

// A basic file for ID only files

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct IdOnly {
    u32 Id;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    IdOnly Object[ObjectCount];
};

FullFile File @ 0x00;