#!/bin/bash
df -h -P -l "$HOME" | awk 'NR > 1 {print$4}'
