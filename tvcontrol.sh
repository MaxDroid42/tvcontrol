#!/bin/bash

#Silence will fall! (set time in seconds of silence, before turning of the tv)
st=5

while true
do
    run="$(cat /proc/asound/card*/pcm*/sub*/status | grep -c RUNNING)"
    if [[ $run != 0 ]]
    then
        while [[ "$(echo 'pow 0' | cec-client -s -d 1 | grep -c standby)" != 0 ]]
        do
            echo "on 0" | cec-client -s -d 1
            echo "as" | cec-client -s -d 1
            sleep 2
        done
    else
        sleep $st
        run="$(cat /proc/asound/card*/pcm*/sub*/status | grep -c RUNNING)"
        if [[ $run = 0 ]]
        then
            while [[ "$(echo 'pow 0' | cec-client -s -d 1 | grep -c standby)" = 0 ]]
            do
                echo "standby 0" | cec-client -s -d 1
                sleep 2
            done
        fi
    fi
    sleep 1
done
