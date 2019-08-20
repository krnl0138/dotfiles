#!/bin/sh
#https://askubuntu.com/questions/298608/notify-send-doesnt-work-from-crontab
export DISPLAY=:0
eval "export $(egrep -z DBUS_SESSION_BUS_ADDRESS /proc/$(pgrep -u $LOGNAME sway | sed -n 1p)/environ)";
trash-empty 30 && notify-send -t 5000 "CRONJOB: Trash was emptied" || notify-send "CRONJOB: Trash was NOT emptied"
