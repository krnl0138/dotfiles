#!/usr/bin/bash
#https://askubuntu.com/questions/298608/notify-send-doesnt-work-from-crontab
export DISPLAY=:0
eval "export $(egrep -z DBUS_SESSION_BUS_ADDRESS /proc/$(pgrep -u $LOGNAME sway | sed -n 1p)/environ)";
FILENAME="$HOME/backup/mypackages_$(date +%d-%m-%Y).txt"
yay -Qe | awk '{print $1}' > "$FILENAME" && notify-send "CRONJOB: the list of installed pkgs is saved"
