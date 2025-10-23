import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct FieldStageInfo {
    u32 FieldStageInfoId;
    u32 Index;
    u32 FieldAreaInfoId;
    u32 MessageId;
    u32 StageReverbId[2];
    u32 UnknownBgmId[5]; // I ain't looking
    u32 Unknown1[3]; // always the same
    u32 Flag[2];
    u32 Number[2];
    u32 Unknown2[2];
    float Float[2];
    u32 MostlyFlags[5];
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.MostlyFlags;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    FieldStageInfo Object[ObjectCount];
};

FullFile File @ 0x00;