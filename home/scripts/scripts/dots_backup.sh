#!/bin/sh
#https://askubuntu.com/questions/298608/notify-send-doesnt-work-from-crontab
export DISPLAY=:0
eval "export $(egrep -z DBUS_SESSION_BUS_ADDRESS /proc/$(pgrep -u $LOGNAME sway | sed -n 1p)/environ)";
DIRFROM="$HOME/dotfiles"
DIRTO="$HOME/backup/dotfiles_$(date +%d-%m-%Y)"
SUCCESS_TEXT="CRONJOB: dotfiles were backed up from " 
FAIL_TEXT="CRONJOB: dotfiles weren't backed up"
rsync -aq $DIRFROM $DIRTO && notify-send '"$SUCCESS_TEXT""$DIRFROM" at "$DIRTO"' || notify-send "$FAIL_TEXT"
