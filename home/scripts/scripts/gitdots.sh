#!/bin/sh
#https://www.youtube.com/watch?v=6oTzYnQY17Q
#https://askubuntu.com/questions/298608/notify-send-doesnt-work-from-crontab
export DISPLAY=:0
eval "export $(egrep -z DBUS_SESSION_BUS_ADDRESS /proc/$(pgrep -u $LOGNAME sway | sed -n 1p)/environ)";
cd "$HOME/dotfiles"
git add * && git commit -am "regular auto update" && git push && notify-send \
"Synchronization of dots at github succeeded" || notify-send \ 
"Synchronization of dots at github failed or there were no changes"
