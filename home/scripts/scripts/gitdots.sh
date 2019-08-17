#!/bin/sh
cd "$HOME/dotfiles"
git add * && git commit -am "regular auto update" && git push
