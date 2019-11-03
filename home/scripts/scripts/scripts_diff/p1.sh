#!/bin/sh

for url in $(cat "$HOME"/t1.txt); do
    curl $url >> megapage.html
done
