#!/bin/bash
clear
source Character_choice.sh
source Classes_choice.sh
source Player_Classes.sh
source Random_Enemies.sh
source Random_Bosses.sh
source Floor.sh
source Fight.sh
echo Welcome to my game


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
    if [ "$choix2" == yes ];
    then
	Classes_choice
	read -p "will you continue yes or no ? " choix3
    while [ $choix3 != yes -a $choix3 != no ]
    do
	read -p "will you continue yes or no ? " choix3
    done
    if [ "$choix3" == yes ];
    then
	Players_Classes
       read -p "will you continue yes or no ? " choix4
    while [ $choix4 != yes -a $choix4 != no ]
    do
	read -p "will you continue yes or no ? " choix4
    done
    if [ "$choix4" == yes ];
    then
	Level1_Design
       else
	   echo "Boohoooo u suck"
	   exit
    fi
       else
	   echo "Boohoooo u suck"
	exit
    fi
       else
	   echo "Boohoooo u suck"
	exit
    fi
    elif [ "$choix" == no ]
    then
	exit
fi