#!/bin/bash

Classes_choice()
{

Class=$(sed '1d' ../csv/Classes_Stat.csv | cut -d "," -f2 | tr "," " " | shuf -n 1)

grep $Class ../csv/Classes_Stat.csv | awk -F "," '{print $3}' > Hp
HP_Classes=`cat Hp`

grep $Class ../csv/Classes_Stat.csv | awk -F "," '{print $4}' > Mp
MP_Classes=`cat Mp`

grep $Class ../csv/Classes_Stat.csv | awk -F "," '{print $5}' > Str
Str_Classes=`cat Str`

grep $Class ../csv/Classes_Stat.csv | awk -F "," '{print $6}' > Int
Int_Classes=`cat Int`

grep $Class ../csv/Classes_Stat.csv | awk -F "," '{print $7}' > Def
Def_Classes=`cat Def`

grep $Class ../csv/Classes_Stat.csv | awk -F "," '{print $8}' > Res
Res_Classes=`cat Res`

grep $Class ../csv/Classes_Stat.csv | awk -F "," '{print $9}' > Spd
Spd_Classes=`cat Spd`

grep $Class ../csv/Classes_Stat.csv | awk -F "," '{print $10}' > Luck
Luck_Classes=`cat Luck`

echo "this your class" $Class
echo "HP:" $HP_Classes
echo "MP:" $MP_Classes
echo "STR:" $Str_Classes
echo "INT:" $Int_Classes
echo "DEF:" $Def_Classes
echo "RES:" $Res_Classes
echo "SPD:" $Spd_Classes
echo "LUCK:" $Luck_Classes
}
