default:
    @just --list

extract:
    rm -rf output
    mkdir output
    imhex --pl format textasset/Message_2.txt patterns/message.hexpat output/Message_2.json
    imhex --pl format textasset/TIMELINEEVENT_A12_TOTORI_001ID_5.txt patterns/timelineevent.hexpat output/TIMELINEEVENT_A12_TOTORI_001ID_5.json
    imhex --pl format textasset/Trait.txt patterns/trait.hexpat output/Trait.json
    imhex --pl format textasset/Item.txt patterns/item.hexpat output/Item.json
    imhex --pl format textasset/ItemPotential.txt patterns/itempotential.hexpat output/ItemPotential.json
    imhex --pl format textasset/ItemCategory_2.txt patterns/itemcategory.hexpat output/ItemCategory_2.json
    imhex --pl format textasset/ItemColorType_2.txt patterns/itemcolortype.hexpat output/ItemColorType_2.json
    imhex --pl format textasset/ItemFlavorText_2.txt patterns/itemflavortext.hexpat output/ItemFlavorText_2.json
    imhex --pl format textasset/ItemInfo.txt patterns/iteminfo.hexpat output/ItemInfo.json
    imhex --pl format textasset/ItemKind_2.txt patterns/itemkind.hexpat output/ItemKind_2.json
