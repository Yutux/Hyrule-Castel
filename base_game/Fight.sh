#!/bin/bash


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
    then Remaining_hp_enemies=$(( $Remaining_hp_enemies - $Players_Classes_Str )) &&
	    Remaining_hp_players=$(( $Remaining_hp_players - $STR_Enemies ))
    elif [ $choix4 = "2" ]
    then Remaining_hp_players=$(( $Remaining_hp_players+( $Players_Classes_Hp*1,5 ) ))
    fi
    clear   
}