#!/bin/sh
swaybg VGA-1 `find /home/gppk/pics/wall | shuf -n 1` fill &
OLD_BG=$!
while true; do
    swaybg VGA-1 `find /home/gppk/pics/wall | shuf -n 1` fill &
    NEXT_BG=$!
    sleep 30
    kill $OLD_BG
    OLD_BG=$NEXT_BG
done
