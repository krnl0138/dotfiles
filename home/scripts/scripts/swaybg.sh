#!/bin/sh
if pgrep swaybg 
then
    pkill swaybg && sleep 3 && swaybg -i "$1" -m fill 
else
    swaybg -i "$1" -m fill &
fi
