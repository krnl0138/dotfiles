#!/bin/sh

finder() {
    if [[ -d "$2" ]]; then
        fd -d 1 -t f . "$XDG_DOWNLOAD_DIR" -e "$1" -x mv {} "$2"
    elif [[ ! -d "$2" ]]; then
        mkdir -p "$2"
        fd -d 1 -t f . "$XDG_DOWNLOAD_DIR" -e "$1" -x mv {} "$2"
    fi
}

# function - extention - where to put
finder  mp4      "$XDG_DOWNLOAD_DIR/video"
finder  webp     "$XDG_DOWNLOAD_DIR/video"
finder  mp3      "$XDG_DOWNLOAD_DIR/audio"
finder  wav      "$XDG_DOWNLOAD_DIR/audio"
finder  flac     "$XDG_DOWNLOAD_DIR/audio"
finder  pdf      "$XDG_DOWNLOAD_DIR/books"
finder  txt      "$XDG_DOWNLOAD_DIR/books"
finder  djvu     "$XDG_DOWNLOAD_DIR/books"
finder  epub     "$XDG_DOWNLOAD_DIR/books"
finder  fb2      "$XDG_DOWNLOAD_DIR/books"
finder  mobi     "$XDG_DOWNLOAD_DIR/books"
finder  xlsx     "$XDG_DOWNLOAD_DIR/docs"
finder  xls      "$XDG_DOWNLOAD_DIR/docs"
finder  docx     "$XDG_DOWNLOAD_DIR/docs"
finder  doc      "$XDG_DOWNLOAD_DIR/docs"
finder  ppt      "$XDG_DOWNLOAD_DIR/docs"
finder  torrent  "$XDG_DOWNLOAD_DIR/torrents"
finder  rar      "$XDG_DOWNLOAD_DIR/archives"
finder  7z       "$XDG_DOWNLOAD_DIR/archives"
finder  zip      "$XDG_DOWNLOAD_DIR/archives"
finder  jpg      "$XDG_PICTURES_DIR"
finder  jpe      "$XDG_PICTURES_DIR"
finder  JPG      "$XDG_PICTURES_DIR"
finder  jpeg     "$XDG_PICTURES_DIR"
finder  jpg_     "$XDG_PICTURES_DIR"
finder  png      "$XDG_PICTURES_DIR"
finder  PNG      "$XDG_PICTURES_DIR"
finder  png_     "$XDG_PICTURES_DIR"
finder  gif      "$XDG_PICTURES_DIR"
finder  svg      "$XDG_PICTURES_DIR"

# from PICTURES dir to DOWNLOAD
fd -d 1 -t f . "$XDG_PICTURES_DIR" \
    -E "*.jpg" -E "*.png" -E "*.gif" -E "*.JPG" -E "*.jpeg" -E \
    "*.jpe" -E "*.png_" -E "*.jpg_" -E "*.PNG" -E "*.svg" \
    -x mv {} "$XDG_DOWNLOAD_DIR"
