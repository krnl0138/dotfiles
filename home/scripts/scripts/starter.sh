#!/bin/sh

TEMP_FILE="$HOME/.pomodoro.lock"

lock_file() {
    if [[ -f $TEMP_FILE ]]; then
        return
    else
        touch $TEMP_FILE
    fi
}

trap "rm $TEMP_FILE; exit" SIGHUP SIGINT SIGTERM

while true; do
    lock_file
    # echo $(date +%S)
    sleep 10
done

