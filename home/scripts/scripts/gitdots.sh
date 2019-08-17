#!/bin/sh
#https://www.youtube.com/watch?v=6oTzYnQY17Q
cd "$HOME/dotfiles"
git add * && git commit -am "regular auto update" && git push
