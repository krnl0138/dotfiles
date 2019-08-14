#!/bin/sh
tempfile="/tmp/update_git_packages.txt"
yay -Qsq '\-git' > $tempfile
yay -S --needed --noconfirm --noprogressbar - < $tempfile
