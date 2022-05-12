#!/bin/bash
clear

echo Welcome to my game

Character_choice()
{

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
Level1_Design()
{
    echo ==========NYC==========
    echo "New York City Lot of monsters invade the city our Hero $Player is 
here to find the source of the devil"
echo ==========fight==========    
Random_Enemies
echo "$Player              $Enemies
"HP:" $HP_Players/$HP_Players        "HP:" $HP_Enemies/$HP_Enemies"   
Remaining_hp_players=$HP_Players
Remaining_hp_enemies=$HP_Enemies
Fight_System
while [ $Remaining_hp_players -gt "0" ] || [ $Remaining_hp_enemies -gt "0" ]
do
    echo "$Player              $Enemies
"HP:" $Remaining_hp_players/$HP_Players        "HP:" $Remaining_hp_enemies/$HP_Enemies"
	Fight_System
    if [[ $Remaining_hp_enemies -le 0 ]]
	then
	    echo "YOU WIN !"
	    break
    fi
    
    if [ $Remaining_hp_players -le 0 ]	
    then
	echo "You are dead MDR"
	exit
    fi	 
done
level2_Design
}
level2_Design()
{
    echo ==========Central_Park==========
    echo "After a tought fight our Hero $Player heal Himself and  go toward Central Park"
echo ==========fight==========    
Random_Enemies
echo "$Player              $Enemies
"HP:" $HP_Players/$HP_Players        "HP:" $HP_Enemies/$HP_Enemies"   
Remaining_hp_players=$HP_Players
Remaining_hp_enemies=$HP_Enemies
Fight_System
while [ $Remaining_hp_players -gt "0" ] || [ $Remaining_hp_enemies -gt "0" ]
do
    echo "$Player              $Enemies
"HP:" $Remaining_hp_players/$HP_Players        "HP:" $Remaining_hp_enemies/$HP_Enemies"
	Fight_System
    if [[ $Remaining_hp_enemies -le 0 ]]
	then
	    echo "YOU WIN !"
	    break
    fi
    
    if [ $Remaining_hp_players -le 0 ]	
    then
	echo "You are dead MDR"
	exit
    fi	 
done
level3_Design
}
level3_Design()
{
    echo ==========Empire_State_Building==========
    echo "Our Hero $Player Manage to survive his fights and go to reach The Empire State Building Top floor's"
echo ==========fight==========    
Random_Enemies
echo "$Player              $Enemies
"HP:" $HP_Players/$HP_Players        "HP:" $HP_Enemies/$HP_Enemies"   
Remaining_hp_players=$HP_Players
Remaining_hp_enemies=$HP_Enemies
Fight_System
while [ $Remaining_hp_players -gt "0" ] || [ $Remaining_hp_enemies -gt "0" ]
do
    echo "$Player              $Enemies
"HP:" $Remaining_hp_players/$HP_Players        "HP:" $Remaining_hp_enemies/$HP_Enemies"
	Fight_System
    if [[ $Remaining_hp_enemies -le 0 ]]
	then
	    echo "YOU WIN !"
	    break
    fi
    
    if [ $Remaining_hp_players -le 0 ]	
    then
	echo "You are dead MDR"
	exit
    fi	 
done
level4_Design
}
level4_Design()
{
    Random_Enemies
    echo ==========Floor1==========
    echo "1st floor the first $Enemies face our Hero $Player "
echo ==========fight==========    
echo "$Player              $Enemies
"HP:" $HP_Players/$HP_Players        "HP:" $HP_Enemies/$HP_Enemies"   
Remaining_hp_players=$HP_Players
Remaining_hp_enemies=$HP_Enemies
Fight_System
while [ $Remaining_hp_players -gt "0" ] || [ $Remaining_hp_enemies -gt "0" ]
do
    echo "$Player              $Enemies
"HP:" $Remaining_hp_players/$HP_Players        "HP:" $Remaining_hp_enemies/$HP_Enemies"
	Fight_System
    if [[ $Remaining_hp_enemies -le 0 ]]
	then
	    echo "YOU WIN !"
	    break
    fi
    
    if [ $Remaining_hp_players -le 0 ]	
    then
	echo "You are dead MDR"
	exit
    fi	 
done
level5_Design
}
level5_Design()
{
    echo ==========floor25==========
    echo "Our Hero $Player succeed to reach the floor 25 "
echo ==========fight==========    
Random_Enemies
echo "$Player              $Enemies
"HP:" $HP_Players/$HP_Players        "HP:" $HP_Enemies/$HP_Enemies"   
Remaining_hp_players=$HP_Players
Remaining_hp_enemies=$HP_Enemies
Fight_System
while [ $Remaining_hp_players -gt "0" ] || [ $Remaining_hp_enemies -gt "0" ]
do
    echo "$Player              $Enemies
"HP:" $Remaining_hp_players/$HP_Players        "HP:" $Remaining_hp_enemies/$HP_Enemies"
	Fight_System
    if [[ $Remaining_hp_enemies -le 0 ]]
	then
	    echo "YOU WIN !"
	    break
    fi
    
    if [ $Remaining_hp_players -le 0 ]	
    then
	echo "You are dead MDR"
	exit
    fi	 
done
level6_Design
}
level6_Design()
{
    echo ==========floor35==========
    echo "Our Hero $Player succeed to reach the floor 35 "
echo ==========fight==========    
Random_Enemies
echo "$Player              $Enemies
"HP:" $HP_Players/$HP_Players        "HP:" $HP_Enemies/$HP_Enemies"   
Remaining_hp_players=$HP_Players
Remaining_hp_enemies=$HP_Enemies
Fight_System
while [ $Remaining_hp_players -gt "0" ] || [ $Remaining_hp_enemies -gt "0" ]
do
    echo "$Player              $Enemies
"HP:" $Remaining_hp_players/$HP_Players        "HP:" $Remaining_hp_enemies/$HP_Enemies"
	Fight_System
    if [[ $Remaining_hp_enemies -le 0 ]]
	then
	    echo "YOU WIN !"
	    break
    fi
    
    if [ $Remaining_hp_players -le 0 ]	
    then
	echo "You are dead MDR"
	exit
    fi	 
done
level7_Design
}
level7_Design()
{
    echo ==========floor50==========
    echo "Our Hero $Player succeed to reach the floor 50 ,the evil source deepen "
echo ==========fight==========    
Random_Enemies
echo "$Player              $Enemies
"HP:" $HP_Players/$HP_Players        "HP:" $HP_Enemies/$HP_Enemies"   
Remaining_hp_players=$HP_Players
Remaining_hp_enemies=$HP_Enemies
Fight_System
while [ $Remaining_hp_players -gt "0" ] || [ $Remaining_hp_enemies -gt "0" ]
do
    echo "$Player              $Enemies
"HP:" $Remaining_hp_players/$HP_Players        "HP:" $Remaining_hp_enemies/$HP_Enemies"
	Fight_System
    if [[ $Remaining_hp_enemies -le 0 ]]
	then
	    echo "YOU WIN !"
	    break
    fi
    
    if [ $Remaining_hp_players -le 0 ]	
    then
	echo "You are dead MDR"
	exit
    fi	 
done
level8_Design
}
level8_Design()
{
    echo ==========floor70==========
    echo "The evil source is so dense our Hero $Player hardly manage to reach the floor 70 "
echo ==========fight==========    
Random_Enemies
echo "$Player              $Enemies
"HP:" $HP_Players/$HP_Players        "HP:" $HP_Enemies/$HP_Enemies"   
Remaining_hp_players=$HP_Players
Remaining_hp_enemies=$HP_Enemies
Fight_System
while [ $Remaining_hp_players -gt "0" ] || [ $Remaining_hp_enemies -gt "0" ]
do
    echo "$Player              $Enemies
"HP:" $Remaining_hp_players/$HP_Players        "HP:" $Remaining_hp_enemies/$HP_Enemies"
	Fight_System
    if [[ $Remaining_hp_enemies -le 0 ]]
	then
	    echo "YOU WIN !"
	    break
    fi
    
    if [ $Remaining_hp_players -le 0 ]	
    then
	echo "You are dead MDR"
	exit
    fi	 
done
level9_Design
}
level9_Design()
{
    echo ==========floor90==========
    echo "Floor 90 our say Hero $Player: Almost there !! "
echo ==========fight==========    
Random_Enemies
echo "$Player              $Enemies
"HP:" $HP_Players/$HP_Players        "HP:" $HP_Enemies/$HP_Enemies"   
Remaining_hp_players=$HP_Players
Remaining_hp_enemies=$HP_Enemies
Fight_System
while [ $Remaining_hp_players -gt "0" ] || [ $Remaining_hp_enemies -gt "0" ]
do
    echo "$Player              $Enemies
"HP:" $Remaining_hp_players/$HP_Players        "HP:" $Remaining_hp_enemies/$HP_Enemies"
	Fight_System
    if [[ $Remaining_hp_enemies -le 0 ]]
	then
	    echo "YOU WIN !"
	    break
    fi
    
    if [ $Remaining_hp_players -le 0 ]	
    then
	echo "You are dead MDR"
	exit
    fi	 
done
level10_Design
}
level10_Design()
{
    Random_Bosses
    echo ==========floor102==========
    echo "Finally our Hero $Player reach the top floor the boss $Bosses appears "
echo ==========fight==========    
echo "$Player              $Bosses
"HP:" $HP_Players/$HP_Players        "HP:" $HP_Bosses/$HP_Bosses"   
Remaining_hp_players=$HP_Players
Remaining_hp_Bosses=$HP_Bosses
Fight2_System
while [ $Remaining_hp_players -gt "0" ] || [ $Remaining_hp_Bosses -gt "0" ]
do
    echo "$Player              $Bosses
"HP:" $Remaining_hp_players/$HP_Players        "HP:" $Remaining_hp_Bosses/$HP_Bosses"
	Fight2_System
    if [[ $Remaining_hp_Bosses -le 0 ]]
	then
	    echo " Victory You Defeat !" $Bosses
	    break
    fi
    
    if [ $Remaining_hp_players -le 0 ]	
    then
	echo "You are dead MDR"
	exit
    fi	 
done
}
Fight2_System()
{
    echo "1. Attack   2. Heal"
    read  choix4
    while [ $choix4 != 1 -a $choix4 != 2 ]
    do
	read choix4
    done
    if [ $choix4 = "1" ]
    then Remaining_hp_Bosses=$(( $Remaining_hp_Bosses - $Str_Players )) &&
	    Remaining_hp_players=$(( $Remaining_hp_players - $Str_Bosses ))
    elif [ $choix4 = "2" ]
    then Remaining_hp_players=$(( $Remaining_hp_players+( $HP_Players*1,5 ) ))
    fi
    
}

Fight_System()
{
    echo "1. Attack   2. Heal"
    read  choix4
    while [ $choix4 != 1 -a $choix4 != 2 ]
    do
	read choix4
    done
    if [ $choix4 = "1" ]
    then Remaining_hp_enemies=$(( $Remaining_hp_enemies - $Str_Players )) &&
	    Remaining_hp_players=$(( $Remaining_hp_players - $STR_Enemies ))
    elif [ $choix4 = "2" ]
    then Remaining_hp_players=$(( $Remaining_hp_players+( $HP_Players*1,5 ) ))
    fi
    
}

read -p "Will you start my game yes or no ? " choix
while [ $choix != yes -a $choix != no ]
do
    read -p "Will you start my game yes or no ? " choix
done

if [ "$choix" == yes ]
then
    Character_choice
    read -p "will you continue yes or no ? " choix2
    while [ $choix2 != yes -a $choix2 != no ]
    do
	read -p "will you continue yes or no ? " choix2
    done
    if [ "$choix2" == yes ]; then
       Level1_Design 
       else
	   echo "Pauvre Merde"
	exit
    fi
    
    elif [ "$choix" == no ]
    then
	exit
fi

    
