#!/bin/sh
location=". $HOME/Downloads"
location1=". $HOME/pics"
comm="fd -d 1 -t f"
$comm $location -e pdf -x mv {} ~/Downloads/pdfs
$comm $location -e txt -x mv {} ~/Downloads/txts
$comm $location -e djvu -x mv {} ~/Downloads/djvus
$comm $location -e docx -x mv {} ~/Downloads/docxs
$comm $location -e doc -x mv {} ~/Downloads/docxs
$comm $location -e xlsx -x mv {} ~/Downloads/xlsxs
$comm $location -e xls -x mv {} ~/Downloads/xlsxs
$comm $location -e epub -x mv {} ~/Downloads/epubs
$comm $location -e fb2 -x mv {} ~/Downloads/fb2s  
$comm $location -e ppt -x mv {} ~/Downloads/ppts  
$comm $location -e torrent -x mv {} ~/Downloads/torrents  
$comm $location -e rar -x mv {} ~/Downloads/archives
$comm $location -e 7z -x mv {} ~/Downloads/archives
$comm $location -e zip -x mv {} ~/Downloads/archives  
$comm $location -e jpg -x mv {} ~/pics  
$comm $location -e jpe -x mv {} ~/pics  
$comm $location -e JPG -x mv {} ~/pics  
$comm $location -e jpeg -x mv {} ~/pics
$comm $location -e jpg_ -x mv {} ~/pics
$comm $location -e png -x mv {} ~/pics
$comm $location -e PNG -x mv {} ~/pics
$comm $location -e png_ -x mv {} ~/pics
$comm $location -e gif -x mv {} ~/pics  

$comm $location1 -E "*.jpg" -E "*.png" -E "*.gif" -E "*.JPG" -E "*.jpeg" -E "*.jpe" -E "*.png_" -E "*.jpg_" -E "*.PNG"

