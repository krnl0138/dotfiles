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
finder  mp3      "$XDG_DOWNLOAD_DIR/audio/mp3"
finder  wav      "$XDG_DOWNLOAD_DIR/audio/wav"
finder  flac     "$XDG_DOWNLOAD_DIR/audio/flac"
finder  pdf      "$XDG_DOWNLOAD_DIR/books/pdf"
finder  txt      "$XDG_DOWNLOAD_DIR/books/txt"
finder  djvu     "$XDG_DOWNLOAD_DIR/books/djvu"
finder  epub     "$XDG_DOWNLOAD_DIR/books/epub"
finder  fb2      "$XDG_DOWNLOAD_DIR/books/fb2"
finder  mobi     "$XDG_DOWNLOAD_DIR/books/mobi"
finder  xlsx     "$XDG_DOWNLOAD_DIR/xlsx"
finder  xls      "$XDG_DOWNLOAD_DIR/xlsx"
finder  docx     "$XDG_DOWNLOAD_DIR/docx"
finder  doc      "$XDG_DOWNLOAD_DIR/docx"
finder  ppt      "$XDG_DOWNLOAD_DIR/ppt"
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
fd -d 1 -t f . "$XDG_PICTURES_DIR" -E "*.jpg" -E "*.png" -E "*.gif" -E "*.JPG" -E "*.jpeg" -E \
"*.jpe" -E "*.png_" -E "*.jpg_" -E "*.PNG" -E "*.svg" -x mv {} "$XDG_DOWNLOAD_DIR"
