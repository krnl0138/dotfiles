#!/bin/sh
cd $HOME/dotfiles
git add * && git commit -m "regular auto update" && git push
