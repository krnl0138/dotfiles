#!/bin/sh
export HOME=/home/$notify_user
export DISPLAY=:0.0
/usr/bin/notify-send -t 3000 "Clear bin at .local/share/Trash"
