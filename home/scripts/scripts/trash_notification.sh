#!/bin/sh
export DISPLAY=:0
eval "export $(egrep -z DBUS_SESSION_BUS_ADDRESS /proc/$(pgrep -u $LOGNAME sway | sed -n 1p)/environ)";
/usr/bin/notify-send "Clear bin at .local/share/Trash"
