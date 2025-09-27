default:
    @just --list

extract:
    rm -rf output
    mkdir output
    imhex --pl format textasset/Message_2.txt patterns/message.pat output/Message_2.json
    imhex --pl format textasset/TIMELINEEVENT_A12_TOTORI_001ID_5.txt patterns/timelineevent.pat output/TIMELINEEVENT_A12_TOTORI_001ID_5.json
    imhex --pl format textasset/Trait.txt patterns/trait.pat output/Trait.json
    imhex --pl format textasset/Item.txt patterns/item.pat output/Item.json
    imhex --pl format textasset/ItemPotential.txt patterns/itempotential.pat output/ItemPotential.json
