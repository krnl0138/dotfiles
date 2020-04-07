#!/bin/bash
# script_name=${BASH_SOURCE[0]}
process_name="swaybg"
for pid in $(pidof -x $process_name); do
    if [ $pid != $$ ]; then
        kill -9 $pid
    fi 
done
swaybg -i "$1" -m fit &
