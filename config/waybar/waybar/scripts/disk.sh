#!/bin/bash
df -h -P -l "/" | awk 'NR > 1 {print$4}'
