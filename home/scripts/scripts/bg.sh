#!/bin/sh
while true; do
    img=$(find "$HOME"/pics/wall/* | shuf -n 1)
    swaymsg output "*" bg $img fill
    sleep 600
done
