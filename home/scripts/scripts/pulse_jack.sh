#!/bin/sh
pactl load-module module-jack-sink
pactl load-module module-jack-source
# pactl set-default-sink jack_out
