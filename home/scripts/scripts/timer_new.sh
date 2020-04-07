#!/bin/sh
#### Basic timer

period=$1
message=$2
sleep $period && notify-send -t 2000 "H1"
