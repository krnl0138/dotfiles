#!/bin/sh

IMG=~/.config/wall.png
BG_COLOR="#000000"
BG_MODE="fill"

set_wallpaper(){
    killall swaybg
    swaybg -c "$BG_COLOR" -i "${1:-$IMG}" -m "$BG_MODE" &
}
notification(){
    notify-send -t 4000 "Image changed" "$1"
}

# set given
if [[ -f $1 ]]; then
    cp "$1" "$IMG"
    notification "Setting $1 as image"
fi
# or set random from dir
if [[ -d $1 ]]; then
    rand=$(fd . "$1" | shuf -n 1)
    cp "$rand" "$IMG"
    notification "Setting from directory $1"
fi
if [[ ! -f $IMG ]]; then
    rand=$(fd . "$XDG_PICTURES_DIR" | shuf -n 1)
    cp "$rand" "$IMG"
    notification "No default image, setting random"
fi

set_wallpaper >/dev/null 2>&1
