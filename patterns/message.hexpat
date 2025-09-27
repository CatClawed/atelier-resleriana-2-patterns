struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
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
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];
    
    Property Properties[PropertyCount];
    AtelierString Object[ObjectCount];
};

FullFile File @ 0x00;