import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct FieldStageData {
    u32 FieldStageDataId;
    u32 FieldStageInfoId;
    u32 Flags[2];
    u32 GimmickTypeId;
    u32 GimId; // can be many files, determined by type id? ugh. 2059211439 = gathering
    float Floats[9];
    u32 Numbers[5];
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return std::format("{} - {}", item.GimmickTypeId, item.GimId);
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    FieldStageData Object[ObjectCount];
};

FullFile File @ 0x00;