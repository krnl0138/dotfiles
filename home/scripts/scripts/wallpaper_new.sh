#!/bin/sh

wallpaper(){
    swaybg -c "#000000" -i ~/.config/wall.png -m center
    # swaymsg output "*" bg "$NEW" fit
}

if [[ -f ~/.config/wall.png ]]; then
    wallpaper
    notify-send -t 4000 "Wallpaper changed."
elif
    new_wall=$(fd . $XDG_PICTURES_DIR | shuf -n 1)
    cp "$new_wall" ~/.config/wall.png
    wallpaper
    notify-send -t 4000 "Wallpaper changed."
else
    echo "something went wrong, exit 1"
    exit 1
fi
