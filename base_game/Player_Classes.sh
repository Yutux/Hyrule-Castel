#!/bin/bash


Players_Classes()
{
    echo "Your Hero " $Player "is a " $Class

    Players_Classes_Hp=$(( $HP_Players + $HP_Classes ))
    Players_Classes_Mp=$(( $MP_Players + $MP_Classes ))
    Players_Classes_Str=$(( $Str_Players + $Str_Classes ))
    Players_Classes_Int=$(( $Int_Players + $Int_Classes ))
    Players_Classes_Def=$(( $Def_Players + $Def_Classes ))
    Players_Classes_Res=$(( $Res_Players + $Res_Classes ))
    Players_Classes_Spd=$(( $Spd_Players + $Spd_Classes ))
    Players_Classes_Luck=$(( $Luck_Players + $Luck_Classes ))

echo "HP:" $Players_Classes_Hp
echo "MP:" $Players_Classes_Mp
echo "STR:" $Players_Classes_Str
echo "INT:" $Players_Classes_Int
echo "DEF:" $Players_Classes_Def
echo "RES:" $Players_Classes_Res
echo "SPD:" $Players_Classes_Spd
echo "LUCK:" $Players_Classes_Luck
}