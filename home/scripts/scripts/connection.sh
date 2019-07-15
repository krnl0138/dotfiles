#!/bin/bash
nmcli c up "$(nmcli c | awk 'NR > 1 {print $1}' | fzf -m --preview='head {}' --preview-window=right:0)"
