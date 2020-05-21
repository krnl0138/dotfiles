#!/bin/sh

IMG="$HOME/.config/wall.png"
BG_COLOR="#000000"
BG_MODE="center"

set_wallpaper(){
    killall swaybg
    swaybg -c "$BG_COLOR" -i "${1:-$IMG}" -m "$BG_MODE" &
}
notification(){
    notify-send -t 6000 "Wallpaper was changed on" "$1"
}
getRandomImg(){
    local rand=$(fd -t f . $1 -E "screenshots/" | shuf -n 1)
    echo "$rand"
}

# set given image
if [[ -f $1 ]]; then
    cp "$1" "$IMG"
    notification "Setting $1 as a wallpaper"
fi
# or set random from given dir
if [[ -d $1 ]]; then
    rand=$(getRandomImg "$1")
    cp "$rand" "$IMG"
    notification "Setting random $rand from directory $1"
fi
if [[ ! -f $IMG ]]; then
    rand=$(getRandomImg "$XDG_PICTURES_DIR")
    cp "$rand" "$IMG"
    notification "No default wallpaper, setting random $rand"
fi

set_wallpaper >/dev/null 2>&1
