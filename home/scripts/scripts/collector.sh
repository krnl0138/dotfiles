#!/bin/sh
location="/home/gppk/Downloads"
style='-maxdepth 1 -type f'
find "$style" "$location" \( -iname \*pdf \) -exec mv {} ~/Downloads/pdfs  \;  && \
find "$style" "$location" \( -iname \*djvu \) -exec mv {} ~/Downloads/djvus  \; && \
find "$style" "$location" \( -iname \*docx \) -exec mv {} ~/Downloads/docxs \; && \
find "$style" "$location" \( -iname \*epub \) -exec mv {} ~/Downloads/epubs \; && \
find "$style" "$location" \( -iname \*fb2 \) -exec mv {} ~/Downloads/fb2s  \; && \
find "$style" "$location" \( -iname \*ppt \) -exec mv {} ~/Downloads/ppts  \; && \
find "$style" "$location" \( -iname \*zip \) -exec mv {} ~/Downloads/zips  \; && \
find "$style" "$location" \( -iname \*jpg -o -iname \*jpeg -o -iname \*jpg_ -o \
                                        -iname \*jpe -o -iname \*png -o -iname \*png_ -o \
                                        -iname \*gif \) -exec mv {} ~/pics \; && \
find ~/pics "$style" ! \( -iname \*jpg -o -iname \*jpeg -o -iname \*jpg_ -o \
                                        -iname \*jpe -o -iname \*png -o -iname \*png_ -o \
                                        -iname \*gif \) -exec mv {} ~/Downloads \; 
