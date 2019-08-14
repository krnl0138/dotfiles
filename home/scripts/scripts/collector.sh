#!/bin/sh
location="$HOME/Downloads"
comm=$(find -maxdepth 1 -type f)
"$comm" "$location" \( -iname \*pdf \) -exec mv {} ~/Downloads/pdfs  \;  && \
"$comm" "$location" \( -iname \*djvu \) -exec mv {} ~/Downloads/djvus  \; && \
"$comm" "$location" \( -iname \*docx \) -exec mv {} ~/Downloads/docxs \; && \
"$comm" "$location" \( -iname \*epub \) -exec mv {} ~/Downloads/epubs \; && \
"$comm" "$location" \( -iname \*fb2 \) -exec mv {} ~/Downloads/fb2s  \; && \
"$comm" "$location" \( -iname \*ppt \) -exec mv {} ~/Downloads/ppts  \; && \
"$comm" "$location" \( -iname \*zip \) -exec mv {} ~/Downloads/zips  \; && \
"$comm" "$location" \( -iname \*jpg -o -iname \*jpeg -o -iname \*jpg_ -o \
                                        -iname \*jpe -o -iname \*png -o -iname \*png_ -o \
                                        -iname \*gif \) -exec mv {} ~/pics \; && \
find ~/pics "$style" ! \( -iname \*jpg -o -iname \*jpeg -o -iname \*jpg_ -o \
                                        -iname \*jpe -o -iname \*png -o -iname \*png_ -o \
                                        -iname \*gif \) -exec mv {} ~/Downloads \; 
