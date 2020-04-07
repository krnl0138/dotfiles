#!/bin/bash
compgen -c | sort -dru | fzf | xargs -r swaymsg -t command exec
