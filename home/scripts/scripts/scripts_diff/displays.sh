#!/bin/sh
#https://askubuntu.com/questions/29370/how-to-check-if-a-command-succeeded
if swaymsg -t get_outputs | rg -Sq "VGA"; then
    sleep 2; swaymsg output LVDS-1 disable
else
    swaymsg output LVDS-1 enable
fi

img=$(fd . "$HOME/pics/wall" | shuf -n 1)
swaymsg output "*" bg $img fill
