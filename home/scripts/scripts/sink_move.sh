#!/bin/sh

inputs=($(pactl list short sink-inputs | awk '{print $1 " "}' | tr -d $'\n'))
sources=($(pactl list short sink-inputs | awk '{print $2 " "}' | tr -d $'\n'))

for (( i=0; i<${#inputs[@]}; i++ )); do
    # echo "${sources[$i]}"
    if [[ ${sources[$i]} == "9" ]]; then
        # echo "find source ${inputs[$i]} on 9 channel changing to 2"
        pactl move-sink-input ${inputs[$i]} 2
    else
        # echo "find source ${inputs[$i]} on 2 channel changing to 9"
        pactl move-sink-input ${inputs[$i]} 9
    fi
done
