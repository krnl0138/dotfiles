#!/bin/sh
DIR="/home/schizo/personal/diary/archive/pics"
img=$(fd -t f -S +2500K . "$XDG_PICTURES_DIR" "$DIR" | shuf -n 1)
swaymsg output "*" bg "$img" fill
