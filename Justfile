default:
    @just --list

scenario:
    #!/usr/bin/env bash
    if [ ! -d output ]; then
        mkdir scenario
    else
        rm -rf scenario/*
    fi
    for item in $(find textasset/ -name 'TIMELINEEVENT*' -printf '%f\n');
        do i=${item%????};
        echo $i
        imhex --pl format textasset/${i}.txt patterns/multi-file/timelineevent.hexpat scenario/${i}.json;
    done

extract:
    #!/usr/bin/env bash
    if [ ! -d output ]; then
        mkdir output
    else
        rm -rf output/*
    fi

    imhex --pl format textasset/Message_2.txt patterns/multi-file/message.hexpat output/Message_ENG.json

    idonly=(
        TraitFactor
        TraitKind
        TraitLevelUPKind
        TraitTiming
        GiftColor
        RecipeDerivationMapArrow
        RecipeDerivationType
    )
    for item in "${idonly[@]}";
        do imhex --pl format textasset/${item}.txt patterns/multi-file/idonly.hexpat output/${item}.json;
    done

    for item in $(find patterns/ -maxdepth 1 -type f -printf '%f\n');
        do imhex --pl format textasset/${item::-7}.txt patterns/${item::-7}.hexpat output/${item::-7}.json;
    done

