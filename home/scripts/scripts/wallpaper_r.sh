#!/bin/bash
NEW=$(find ~/pics/wall/ | shuf -n 1)
swaymsg -s $SWAYSOCK output VGA-1 bg "$NEW" fill
