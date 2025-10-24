#pragma endian little
#pragma author Variant9
#pragma description timeline event format for Atelier Resleriana 2

import type.base;
import std.io;

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

u32 PropertyCount @ 0x00 [[hidden]];
u32 ObjectCount @ 0x04 [[hidden]];
Property Properties[PropertyCount] @ 0x08;

struct U32String {
    u32 Length;
    char Data[Length];
} [[format("format_u32string")]];
fn format_u32string(ref auto string) {
    return string.Data;
};

struct DialogLine {
    if (Properties[1].Id == 3013568853) {
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
    }
    else if (Properties[1].Id == 2072370017 && PropertyCount == 9) {
        s32 Index;
        U32String CharacterName;
        U32String CharacterName2;
        u32 Unknown0;
        u32 Unknown1;
        U32String TextBody;
        u32 Unknown2;
        u32 Unknown3;
        u32 Unknown4;
        U32String CharacterName3;
        U32String SystemString;
    }
    else {
        s32 Index;
        U32String CharacterName;
        U32String CharacterName2;
        u32 Unknown0;
        u32 Unknown1;
        U32String TextBody;
        U32String VoiceLineId;
        u32 Unknown2;
        u32 Unknown3;
        u32 Unknown4;
    }
} [[format("format_dialog")]];
fn format_dialog(ref auto string) {
    return string.CharacterName.Data + ": " + string.TextBody.Data;
};

DialogLine Object[ObjectCount] @ 8 + PropertyCount * 8;