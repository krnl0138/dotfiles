#!/bin/bash
NEW=$(readlink -f "$1")
swaymsg -s $SWAYSOCK output VGA-1 bg "$NEW" fill
