#!/bin/sh

cd "$HOME"/notes
fd -t f . | fzf | xargs -r nvim
