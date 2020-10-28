#!/bin/sh
# Set up coding lay out
book1="/home/schizo/downloads/books/Marijn\ Haverbeke\ -\ Eloquent\ Javascript_\ A\ Modern\ Introduction\ to\ Programming-No\ Starch\ Press\ \(2018\).pdf"
book2="/home/schizo/downloads/books/Eric\ Elliott\ -\ Composing\ Software\ \(2019,\ Leanpub\).pdf"
echo $book1 $book2 | xargs okular &
nvim -S ~/.config/nvim/sessions/prog.vim &
