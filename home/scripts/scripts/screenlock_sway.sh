#!/bin/sh
swayidle -w timeout 5 'swaylock -fl -i -s fill ~/pics/HURD_Live_CD.png' \ 
            timeout 600 'swaymsg "output * dpms off"' \
            resume 'swaymsg "output * dpms on"' \
            before-sleep 'swaylock -fl -i ~/pics/HURD_Live_CD.png'
