import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct GimLandmark {
    u32 GimLandmarkId;
    u32 MessageId; // area name
    u32 GimPortalId;
    u32 FieldAreaInfoId;
    u32 Unknown;
    u32 FieldStageInfoId;
    u32 Flag1;
    u32 DungeonBaseId;
    u32 Flag2[3];
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.Flag2;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    GimLandmark Object[ObjectCount];
};

FullFile File @ 0x00;