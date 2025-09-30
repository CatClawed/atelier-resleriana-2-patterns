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
    u32 TraitKindId1;
    u32 GatherableFlag; // some kind of flag
    u32 Grade;
    u32 Unknown2; // bitmap maybe?
    u32 TraitBaseId;
    s32 Value1_1;
    s32 Value1_2;
    u32 TraitBaseId2;
    s32 Value2_1;
    s32 Value2_2;
    u32 TraitKindId2; // trait group id?
} [[format("format_trait")]];
fn format_trait(ref auto trait) {
    return trait.Value2_2;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    TraitInfo Object[ObjectCount];
};

FullFile File @ 0x00;