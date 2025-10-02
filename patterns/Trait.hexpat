#include <std/io.pat>

struct Property {
    u32 Tag;
    u32 Id;
} [[format("format_property")]];
fn format_property(ref auto item) {
    return std::format("{} - {}", item.Tag, item.Id);
};

bitfield Transfer {
    bool Synthesis : 1;
    bool Combat : 1;
    bool Restoratives : 1;
    bool Inhibitor : 1;
    bool Boost : 1;
    bool Weapons : 1;
    bool Armor : 1;
    bool Accessories : 1;
    bool Unknown : 1;
    bool Exploration : 1;
    bool Starpearls : 1;
};

struct TraitInfo {
    u32 TraitId;
    u32 EnabledFlag;
    u32 Index;
    u32 NameStringIndex;
    u32 DescriptionStringIndex;
    u32 TraitKindId1;
    u32 GatherableFlag;
    u32 Grade;
    Transfer TraitTransfer;
    u16 Padding;
    u32 TraitBaseId;
    s32 Value1_1;
    s32 Value1_2;
    u32 TraitBaseId2;
    s32 Value2_1;
    s32 Value2_2;
    u32 TraitKindId2;
} [[format("format_trait")]];
fn format_trait(ref auto trait) {
    return trait.TraitTransfer;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    TraitInfo Object[ObjectCount];
};

FullFile File @ 0x00;