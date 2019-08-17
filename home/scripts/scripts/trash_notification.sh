#!/bin/sh
export HOME=/home/$notify_user
export DISPLAY=:0
/usr/bin/notify-send "Clear bin at .local/share/Trash"
