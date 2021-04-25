#!/bin/sh

cd "$HOME"/scripts
fd -t f -d 1  . | fzf | xargs -r nvim
