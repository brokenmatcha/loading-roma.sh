#!/bin/bash


sleep 3
phases=( 
    'Pizza...'
    'Pasta...'
    'Pizza...'
    'Colosseo...'
    'Pizza...'
    'Espresso...'
)


for i in $(seq 1 100)
do
    sleep 0.2 

    
    if [ $i -eq 100 ]; then
        echo -e "XXX\n100\nDone!\nXXX"
    elif [ $(($i % 25)) -eq 0 ]; then
        let "phase = $i / 25"
        echo -e "XXX\n$i\n${phases[phase]}\nXXX"
    else
        echo $i
    fi


done | whiptail --title 'Roma' --gauge 'Loading ...' 6 50 0



