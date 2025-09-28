import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct EnemyBaseInfo {
    u32 EnemyBaseID;
    u32 Unknown1;
    u32 Unknown2;
    u32 Unknown3; // commonly equal to Unknown4
    u32 Unknown4;
    u32 Unknown5;
    u32 Unknown6;
    u32 Unknown7;
    u32 Unknown8;
    u32 Unknown9;
    u32 Unknown10;
    u32 Unknown11;
    u32 Unknown12;
    u32 Unknown13;
    u32 wtf[2];
    u32 Unknown14;
    u32 NameStringId;
    u32 Unknown15;
    u32 Unknown16;
    u32 wtf2[7]; // I would love to know what that 00 00 80 3f business means
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.Unknown16;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    EnemyBaseInfo Object[ObjectCount];
};

FullFile file @ 0x00;