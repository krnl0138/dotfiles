#!/bin/sh

# This script will compile or run another finishing operation on a document. I
# have this script run via vim.
#
# Compiles .tex. groff (.mom, .ms), .rmd, .md, .org.  Opens .sent files as sent
# presentations.  Runs scripts based on extention or shebang
#
# Note that .tex files which you wish to compile with XeLaTeX should have the
# string "xelatex" somewhere in a comment/command in the first 5 lines.

file=$(readlink -f "$1")
dir=${file%/*}
base="${file%.*}"
ext="${file##*.}"

cd "$dir" || exit

textype() { \
	command="pdflatex"
	( sed 5q "$file" | grep -i -q 'xelatex' ) && command="xelatex"
	$command --output-directory="$dir" "$base" &&
	grep -i addbibresource "$file" >/dev/null &&
	biber --input-directory "$dir" "$base" &&
	$command --output-directory="$dir" "$base" &&
	$command --output-directory="$dir" "$base"
}

case "$ext" in
	[0-9]) preconv "$file" | refer -PS -e | groff -mandoc -T pdf > "$base".pdf ;;
	c) cc "$file" -o "$base" && "$base" ;;
	go) go run "$file" ;;
	cpp) g++ "$file" -o "$base" && "$base" ;;
	h) sudo make install ;;
	m) octave "$file" ;;
	md)	if  [ -x "$(command -v lowdown)" ]; then
			lowdown -d nointem -e super "$file" -Tms | groff -mpdfmark -ms -kept > "$base".pdf
		elif [ -x "$(command -v groffdown)" ]; then
			groffdown -i "$file" | groff > "$base.pdf"
		else
			pandoc "$file" --pdf-engine=xelatex -o "$base".pdf
		fi ; ;;
	mom) preconv "$file" | refer -PS -e | groff -mom -kept -T pdf > "$base".pdf ;;
	ms) preconv "$file" | refer -PS -e | groff -me -ms -kept -T pdf > "$base".pdf ;;
	py) python "$file" ;;
	[rR]md) Rscript -e "rmarkdown::render('$file', quiet=TRUE)" ;;
	rs) cargo build ;;
   sass) sassc -a "$file" "$base.css" ;;
	scad) openscad -o "$base".stl "$file" ;;
	sent) setsid -f sent "$file" 2>/dev/null ;;
	tex) textype "$file" ;;
	org) emacs "$file" --batch -u "$USER" -f org-latex-export-to-pdf ;;
	*) sed 1q "$file" | grep "^#!/" | sed "s/^#!//" | xargs -r -I % "$file" ;;
esac
