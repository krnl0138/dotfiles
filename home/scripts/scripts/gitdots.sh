#!/bin/sh
#https://www.youtube.com/watch?v=6oTzYnQY17Q
#https://askubuntu.com/questions/298608/notify-send-doesnt-work-from-crontab
# export DISPLAY=:0
# eval "export $(egrep -z DBUS_SESSION_BUS_ADDRESS /proc/$(pgrep -u $LOGNAME sway | sed -n 1p)/environ)";

SUCCESS_TEXT="CRONJOB: Dotfiles were synced"
FAIL_TEXT="CRONJOB: Dotfiles were not changed or sync failed"

cd "$HOME/dotfiles"
git add . && git commit -am "regular auto update" && git push && notify-send "$SUCCESS_TEXT" || notify-send "$FAIL_TEXT"
