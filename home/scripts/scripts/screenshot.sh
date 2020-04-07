#!/usr/bin sh
slurp | grim -g - - | wl-copy && wl-paste > $(xdg-user-dir SCREENSHOTS)/$(date +'%Y-%m-%d-%H%M%S.png')
