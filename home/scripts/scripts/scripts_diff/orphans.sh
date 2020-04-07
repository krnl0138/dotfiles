#!/bin/sh
# orphans=$(pacman -Qtdq)
sudo pacman -Rns $(pacman -Qtdq)
