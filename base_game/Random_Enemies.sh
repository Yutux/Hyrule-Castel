#!/bin/bash

Random_Enemies()
{
    
Enemies=$(sed '1d' ../csv/Enemies_stat.csv | cut -d "," -f2 | tr "," " " | shuf -n 1)

grep $Enemies ../csv/Enemies_stat.csv | awk -F "," '{print $3}' > Hp
HP_Enemies=`cat Hp`

grep $Enemies ../csv/Enemies_stat.csv | awk -F "," '{print $4}' > Mp
MP_Enemies=`cat Mp`

grep $Enemies ../csv/Enemies_stat.csv | awk -F "," '{print $5}' > Str
STR_Enemies=`cat Str`

grep $Enemies ../csv/Enemies_stat.csv | awk -F "," '{print $6}' > Int
INT_Enemies=`cat Int`

grep $Enemies ../csv/Enemies_stat.csv | awk -F "," '{print $7}' > Def
DEF_Enemies=`cat Def`

grep $Enemies ../csv/Enemies_stat.csv | awk -F "," '{print $8}' > Res
RES_Enemies=`cat Res`

grep $Enemies ../csv/Enemies_stat.csv | awk -F "," '{print $9}' > Spd
SPD_Enemies=`cat Spd`

grep $Enemies ../csv/Enemies_stat.csv | awk -F "," '{print $3}' > Luck
LUCK_Enemies=`cat Luck`
}