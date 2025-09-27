struct Header {
    u32 Magic; // 0x04
    u32 Count;
    u32 Unknown[8];
};

struct U32String {
    u32 Length;
    char Data[Length];
} [[format("format_u32string")]];
fn format_u32string(ref auto string) {
    return string.Data;
};

struct AtelierString {
    u32 Id;
    U32String String;
    u64 Padding;
} [[format("format_atelierstring")]];
fn format_atelierstring(ref auto string) {
    return string.String.Data;
};

struct FullFile {
    Header header;
    AtelierString String[header.Count];
};

FullFile file @ 0x00;