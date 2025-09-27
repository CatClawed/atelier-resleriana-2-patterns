import std.io;

struct Header {
    u32 Magic; // 0x0B
    u32 Count;
    u32 Unknown[22];
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
    Header header;
    ItemPotential ItemPotentials[header.Count];
};

FullFile file @ 0x00;