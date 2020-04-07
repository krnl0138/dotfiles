#!/bin/sh
NEW=$(fd . $XDG_PICTURES_DIR | shuf -n 1)
swaymsg output "*" bg "$NEW" fit
