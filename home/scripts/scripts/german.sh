#!/bin/sh

okular "$HOME/german/Begegnungen/Begegnungen_A1.pdf" \
    "$HOME/german/ThemenAktuell_1/ThemenAktuell_1_Kursbuch.pdf" \
    "$HOME/german/ThemenAktuell_1/ThemenAktuell_1_Arbeitsbuch.pdf" \
    "$HOME/german/practice_makes_perfect_series/Ed_Swick__Practice_Makes_Perfect_Complete_German_Grammar_McGraw_Hill_2018.pdf" &
nvim -S "$HOME/.config/nvim/sessions/german.vim"
