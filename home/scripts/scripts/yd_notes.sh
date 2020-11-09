#!/bin/sh
SUCCESS_TEXT="CRONJOB: notes was backed up"
FAIL_TEXT="CRONJOB: notes was NOT backed up"
ydcmd --skip-hash --config=/home/schizo/.config/ydcmd.conf put --rsync "$HOME/notes/" notes/ && \
  notify-send "$SUCCESS_TEXT" || notify-send "$FAIL_TEXT"
