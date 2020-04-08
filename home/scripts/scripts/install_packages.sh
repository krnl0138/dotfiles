#!/bin/sh
applist="$HOME/dotfiles/other/applist_2020-04-08"
yay -S --needed - < "$applist" && \
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish && \
fisher add jorgebucaran/fish-bax && \
fisher add matchai/spacefish && \
fisher add oh-my-fish/plugin-fasd
