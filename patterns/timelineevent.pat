#pragma endian little
#pragma author Variant9
#pragma description timeline event format for Atelier Resleriana 2

#pragma magic 0x00000008

struct Header {
    u32 Magic; // 0x08
    u32 LineCount;
    s32 Unknown[16];
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
    Header header;
    DialogLine strings[header.LineCount];
};

FullFile file @ 0x00;