#!/usr/bin/env sh

#for i in $(polybar -m | awk -F: '{print $1}'); do MONITOR=$i polybar example -c ~/.config/polybar/config & done
if pgrep -x "polybar" > /dev/null
then
    killall -q polybar
else
    killall -q polybar
    polybar example -r
fi
