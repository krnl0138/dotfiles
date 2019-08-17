#!/bin/sh
export DISPLAY=:0
eval "export $(egrep -z DBUS_SESSION_BUS_ADDRESS /proc/1229/environ)";
/usr/bin/notify-send "Clear bin at .local/share/Trash"
