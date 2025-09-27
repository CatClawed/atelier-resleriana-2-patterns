#include <std/io.pat>

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

struct TraitInfo {
    u32 TraitId; // likely trait id
    u32 EnabledFlag; // is enabled flag?
    u32 Index; // index in the file, possibly
    u32 NameStringIndex;
    u32 DescriptionStringIndex;
    u32 Unknown1;
    u32 UnknownFlag1; // some kind of flag
    u32 Value1;
    u32 Unknown2; // bitmap maybe?
    u32 Unknown3;
    u32 Unknown4;
    u32 Unknown5;
    u32 Unknown6;
    u32 Value2;
    u32 Value3;
    u32 Unknown7; // trait group id?
} [[format("format_trait")]];
fn format_trait(ref auto trait) {
    return std::format("Effect {} ({}, {}, {}) with values {}/{}/{}", trait.Unknown7, trait.Unknown1, trait.Unknown3, trait.Unknown6, trait.Value1, trait.Value2, trait.Value3);
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];
    
    Property Properties[PropertyCount];
    TraitInfo Object[ObjectCount];
};

FullFile File @ 0x00;