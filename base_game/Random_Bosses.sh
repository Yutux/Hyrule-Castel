#!/bin/bash

Random_Bosses()
{

Bosses=$(sed '1d' ../csv/Bosses_stat.csv | cut -d "," -f2 | tr "," " " | shuf -n 1)

grep $Bosses ../csv/Bosses_stat.csv | awk -F "," '{print $3}' > Hp
HP_Bosses=`cat Hp`

grep $Bosses ../csv/Bosses_stat.csv | awk -F "," '{print $4}' > Mp
MP_Bosses=`cat Mp`

grep $Bosses ../csv/Bosses_stat.csv | awk -F "," '{print $5}' > Str
Str_Bosses=`cat Str`

grep $Bosses ../csv/Bosses_stat.csv | awk -F "," '{print $6}' > Int
Int_Bossess=`cat Int`

grep $Bosses ../csv/Bosses_stat.csv | awk -F "," '{print $7}' > Def
Def_Bossess=`cat Def`

grep $Bosses ../csv/Bosses_stat.csv | awk -F "," '{print $8}' > Res
Res_Bosses=`cat Res`

grep $Bosses ../csv/Bosses_stat.csv | awk -F "," '{print $9}' > Spd
Spd_Bosses=`cat Spd`

grep $Bosses ../csv/Bosses_stat.csv | awk -F "," '{print $10}' > Luck
Luck_Bosses=`cat Luck`
}