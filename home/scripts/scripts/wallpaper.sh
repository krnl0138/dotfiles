#!/bin/sh
NEW=$(fd . "$HOME/pics/wall" | shuf -n 1)
swaymsg output "*" bg "$NEW" fill
