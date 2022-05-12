#!/bin/bash

Character_choice()
{
echo "This is your Character"
Player=$(sed '1d' ../csv/Players_stat.csv | cut -d "," -f2 | tr "," " " | shuf -n 1)

grep $Player ../csv/Players_stat.csv | awk -F "," '{print $3}' > Hp
HP_Players=`cat Hp`

grep $Player ../csv/Players_stat.csv | awk -F "," '{print $4}' > Mp
MP_Players=`cat Mp`

grep $Player ../csv/Players_stat.csv | awk -F "," '{print $5}' > Str
Str_Players=`cat Str`

grep $Player ../csv/Players_stat.csv | awk -F "," '{print $6}' > Int
Int_Players=`cat Int`

grep $Player ../csv/Players_stat.csv | awk -F "," '{print $7}' > Def
Def_Players=`cat Def`

grep $Player ../csv/Players_stat.csv | awk -F "," '{print $8}' > Res
Res_Players=`cat Res`

grep $Player ../csv/Players_stat.csv | awk -F "," '{print $9}' > Spd
Spd_Players=`cat Spd`

grep $Player ../csv/Players_stat.csv | awk -F "," '{print $10}' > Luck
Luck_Players=`cat Luck`

echo $Player
echo "HP:" $HP_Players
echo "MP:" $MP_Players
echo "STR:" $Str_Players
echo "INT:" $Int_Players
echo "DEF:" $Def_Players
echo "RES:" $Res_Players
echo "SPD:" $Spd_Players
echo "LUCK:" $Luck_Players
}