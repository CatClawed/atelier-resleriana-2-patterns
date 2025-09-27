#pragma endian little
#pragma author Variant9
#pragma description timeline event format for Atelier Resleriana 2

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

struct DialogLine {
    s32 Index;
    U32String CharacterName;
    u32 Unknown0; // tied to character
    u32 Unknown1; // tied to character
    U32String VoiceLineId;
    u32 Unknown2; // tied to character
    u32 Unknown3; // tied to character
    u32 Unknown4; // same over entire file
    U32String CharacterName2;
    U32String TextBody;
} [[format("format_dialog")]];
fn format_dialog(ref auto string) {
    return string.CharacterName.Data + ": " + string.TextBody.Data;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];
    
    Property Properties[PropertyCount];
    DialogLine Object[ObjectCount];
};

FullFile File @ 0x00;