import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct ItemPotential {
    u32 PotentialId; // found in item
    u32 UnknownId2;
    u32 UnknownId3;
    u32 UnknownId4;
    u32 UnknownId5;
    u32 UnknownId6;
    u32 UnknownId7;
    u32 UnknownId8;
    u32 UnknownId9;
    u32 UnknownId10;
    u32 UnknownId11;
} [[format("format_potential")]];
fn format_potential(ref auto item) {
    return std::format("{:08X}", item.PotentialId);
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];
    
    Property Properties[PropertyCount];
    ItemPotential Object[ObjectCount];
};

FullFile File @ 0x00;