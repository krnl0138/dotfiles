#!/usr/bin/bash
#DATE="$(date +%d-%m-%Y)"
NAME="/home/gppk/backup/mypackages_$(date +%d-%m-%Y).txt"
MESSAGE="CRONJOB: the list of installed pkgs is saved."
yay -Qe | awk '{print $1}' > "$NAME" && $SWAYSOCK notify-send -t 5000 "$MESSAGE"
