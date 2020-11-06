#!/bin/sh
SUCCESS_TEXT="CRONJOB: zotero_lib was backed up"
FAIL_TEXT="CRONJOB: zotero_lib was NOT backed up"
ydcmd --skip-hash --config=/home/schizo/.config/ydcmd.conf put --rsync "$HOME/zotero_library/" zotero_library/ && \
  notify-send "$SUCCESS_TEXT" || notify-send "$FAIL_TEXT"
