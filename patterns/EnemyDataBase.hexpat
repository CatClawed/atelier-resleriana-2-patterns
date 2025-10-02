import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct EnemyDataBase {
    u32 EnemyDataBaseId;
    u32 EnemyBaseInfoId;
    u32 Unknown1;
    u32 Flag1; // always 0 or 3
    u32 Unknown2; // clustered together
    u32 Unknown3; // clustered together, almost 100% similar to previous value but different values, at least one outlier
    u32 Number[4]; // 0, 1: 500 or 700; 2: 250 or 250; 3: varies
    u32 wtf[5];
    u32 Unknown4; // similar clustering again
    u32 Unknown5;
    u32 Unknown6;
    u32 Unknown7; // some zeroes
    u32 wtf2[13]; // 4, 8: Always 0
} [[format("format_thing")]];
fn format_thing(ref auto item) {
    return item.wtf[8];
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    EnemyDataBase Object[ObjectCount];
};

FullFile File @ 0x00;