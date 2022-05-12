#!/bin/bash

source Fight.sh

Level1_Design()
{
    echo ==========NYC==========
    echo "New York City Lot of monsters invade the city our Hero $Player is 
here to find the source of the devil"
echo ==========fight==========    
Random_Enemies
echo "$Player              $Enemies
"HP:" $Players_Classes_Hp/$Players_Classes_Hp        "HP:" $HP_Enemies/$HP_Enemies"   
Remaining_hp_players=$Players_Classes_Hp
Remaining_hp_enemies=$HP_Enemies
Fight_System
while [ $Remaining_hp_players -gt "0" ] || [ $Remaining_hp_enemies -gt "0" ]
do
    echo "$Player              $Enemies
"HP:" $Remaining_hp_players/$Players_Classes_Hp        "HP:" $Remaining_hp_enemies/$HP_Enemies"
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
"HP:" $Players_Classes_Hp/$Players_Classes_Hp        "HP:" $HP_Enemies/$HP_Enemies"   
Fight_System
while [ $Remaining_hp_players -gt "0" ] || [ $Remaining_hp_enemies -gt "0" ]
do
    echo "$Player              $Enemies
"HP:" $Remaining_hp_players/$Players_Classes_Hp        "HP:" $Remaining_hp_enemies/$HP_Enemies"
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
    echo ==========Empire State Building==========
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
	    echo " Victory You Defeat" $Bosses "!"
	    break
    fi
    
    if [ $Remaining_hp_players -le 0 ]	
    then
	echo "You are dead MDR"
	exit
    fi	 
done
}