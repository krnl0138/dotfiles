#!/usr/bin/sh
#https://askubuntu.com/questions/298608/notify-send-doesnt-work-from-crontab
# export DISPLAY=:0
# eval "export $(egrep -z DBUS_SESSION_BUS_ADDRESS /proc/$(pgrep -u $LOGNAME sway | sed -n 1p)/environ)";
SUCCESS_TEXT="CRONJOB: the list of installed pkgs was saved at "
FAIL_TEXT="CRONJOB: the list of installed pkgs was not saved"
FILENAME="$HOME/personal/dotfiles_backup/mypackages_$(date +%d-%m-%Y).txt"
yay -Qe | awk '{print $1}' > "$FILENAME" && notify-send "$SUCCESS_TEXT""$FILENAME" || notify-send "$FAIL_TEXT"


