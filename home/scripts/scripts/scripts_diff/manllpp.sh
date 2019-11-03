#!/bin/bash

if [[ -f $HOME/.config/dmenurc ]]; then
  . $HOME/.config/dmenurc
else
  DMENU="dmenu -i"
fi

PAGE=$( apropos -s 1 . | awk '{print $1}' | $DMENU )
file=$(mktemp /tmp/beautiful_man.XXXXXXXXX)
man -t "$PAGE" > $file
llppac -t ps $file
