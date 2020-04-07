#!/bin/sh

OUTPUTS=$( swaymsg -t get_outputs )

i=0
while [ $i -le 1 ]
do
    if [ $( echo "$OUTPUTS" | jq .["$i"]."name" ) == "\"VGA-1\"" ]; then
        if [ $( echo "$OUTPUTS" | jq .["$i"]."active" ) = true ]; then
            swaymsg output "LVDS-1" disable
            notify-send -t 5000 "VGA-1 is active -> LVDS-1 was disabled"
            exit 1
        fi
    fi
    i=$((i+1))
done

notify-send -t 5000 "VGA-1 is not connected or is not active"
