#!/bin/sh
#https://askubuntu.com/questions/298608/notify-send-doesnt-work-from-crontab
export DISPLAY=:0
eval "export $(egrep -z DBUS_SESSION_BUS_ADDRESS /proc/$(pgrep -u $LOGNAME sway | sed -n 1p)/environ)";
DIRFROM="$HOME/dotfiles"
DIRTO="$HOME/backup/dotfiles_$(date +%d-%m-%Y)"
rsync -aq $DIRFROM $DIRTO && notify-send \
"CRONJOB: dotfiles were backed up from $DIRFROM at $DIRTO" || notify-send \
"CRONJOB: dotfiles weren't backed up"
