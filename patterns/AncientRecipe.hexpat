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

struct AncientRecipe {
    u32 AncientRecipeId;
    u32 ItemId;
    U32String String;
    u32 Index;
    u32 MessageId;
    U32String String2;
    u32 RecipeId;
} [[format("format_thing")]];
fn format_thing(ref auto string) {
    return string.String.Data;
};

struct FullFile {
    u32 PropertyCount [[hidden]];
    u32 ObjectCount [[hidden]];

    Property Properties[PropertyCount];
    AncientRecipe Object[ObjectCount];
};

FullFile File @ 0x00;