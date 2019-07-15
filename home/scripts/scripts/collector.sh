#!/bin/sh
location="/home/gppk/Downloads"
style="-maxdepth 1 -type f"
find $location $style \( -iname \*pdf \) -exec mv {} ~/Downloads/pdfs  \;  && \
find $location $style \( -iname \*djvu \) -exec mv {} ~/Downloads/djvus  \; && \
find $location $style \( -iname \*docx \) -exec mv {} ~/Downloads/docxs \; && \
find $location $style \( -iname \*epub \) -exec mv {} ~/Downloads/epubs \; && \
find $location $style \( -iname \*fb2 \) -exec mv {} ~/Downloads/fb2s  \; && \
find $location $style \( -iname \*ppt \) -exec mv {} ~/Downloads/ppts  \; && \
find $location $style \( -iname \*zip \) -exec mv {} ~/Downloads/zips  \; && \
find $location $style \( -iname \*jpg -o -iname \*jpeg -o -iname \*jpg_ -o \
                                        -iname \*jpe -o -iname \*png -o -iname \*png_ -o \
                                        -iname \*gif \) -exec mv {} ~/pics \; && \
find ~/pics $style ! \( -iname \*jpg -o -iname \*jpeg -o -iname \*jpg_ -o \
                                        -iname \*jpe -o -iname \*png -o -iname \*png_ -o \
                                        -iname \*gif \) -exec mv {} ~/Downloads \; 
