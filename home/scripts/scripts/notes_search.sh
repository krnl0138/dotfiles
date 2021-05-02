#!/bin/bash

NOTES_DIR="$HOME/notes/"
INP=$(echo "$1" | sed -e s/_/' '/g)
rg -Swl "$INP" "$NOTES_DIR" | fzf | xargs -r nvim
