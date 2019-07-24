#!/bin/bash
# icon from https://raw.githubusercontent.com/meskarune/i3lock-fancy/master/lock.png
ICON=(~/.config/i3/lock.png)
scrot -z /tmp/screen.png
convert /tmp/screen.png -scale 10% -scale 1000% $ICON -gravity center -composite -matte /tmp/screen.png
i3lock -u -e -i /tmp/screen.png
