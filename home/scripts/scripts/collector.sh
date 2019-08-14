#!/bin/sh
# location="$HOME/Downloads"
# comm="find -maxdepth 1 -type f $location"
# $comm \( -iname \*pdf \) -exec mv {} ~/Downloads/pdfs  \;  && \
# $comm \( -iname \*djvu \) -exec mv {} ~/Downloads/djvus  \; && \
# $comm \( -iname \*docx \) -exec mv {} ~/Downloads/docxs \; && \
# $comm \( -iname \*epub \) -exec mv {} ~/Downloads/epubs \; && \
# $comm \( -iname \*fb2 \) -exec mv {} ~/Downloads/fb2s  \; && \
# $comm \( -iname \*ppt \) -exec mv {} ~/Downloads/ppts  \; && \
# $comm \( -iname \*zip \) -exec mv {} ~/Downloads/zips  \; && \
# $comm \( -iname \*jpg -o -iname \*jpeg -o -iname \*jpg_ -o \
#                                         -iname \*jpe -o -iname \*png -o -iname \*png_ -o \
#                                         -iname \*gif \) -exec mv {} ~/pics \; && \
# find ~/pics "$style" ! \( -iname \*jpg -o -iname \*jpeg -o -iname \*jpg_ -o \
#                                         -iname \*jpe -o -iname \*png -o -iname \*png_ -o \
#                                         -iname \*gif \) -exec mv {} ~/Downloads \; 
location=". $HOME/Downloads"
comm="fd -I -d 1 -t f $location"
$comm -e pdf -x mv {} ~/Downloads/pdfs
$comm -e djvu -x mv {} ~/Downloads/djvus
$comm -e docx -x mv {} ~/Downloads/docxs
$comm -e epub -x mv {} ~/Downloads/epubs
$comm -e fb2 -x mv {} ~/Downloads/fb2s  
$comm -e ppt -x mv {} ~/Downloads/ppts  
$comm -e zip -x mv {} ~/Downloads/zips  
# $comm -e jpg -o -iname \*jpeg -o -iname \*jpg_ -o \
#                                         -iname \*jpe -o -iname \*png -o -iname \*png_ -o \
#                                         -iname \*gif \) -exec mv {} ~/pics \; && \
# find ~/pics "$style" ! \( -iname \*jpg -o -iname \*jpeg -o -iname \*jpg_ -o \
#                                         -iname \*jpe -o -iname \*png -o -iname \*png_ -o \
#                                         -iname \*gif \) -exec mv {} ~/Downloads \; 
