#!/bin/sh
# This script will compile or run another finishing operation on a document. I
# have this script run via vim.
#
# Compiles .tex. groff (.mom, .ms), .rmd, .md.
# Opens .sent files as sent presentations.
# Runs scripts based on extention or shebang

file=$(readlink -f "$1")
dir=$(dirname "$file")
base="${file%.*}"

cd "$dir" || exit

# textype() { \
# 	command="pdflatex"
# 	( sed 5q "$file" | grep -i -q 'xelatex' ) && command="xelatex"
# 	$command --output-directory="$dir" "$base" &&
# 	grep -i addbibresource "$file" >/dev/null &&
# 	biber --input-directory "$dir" "$base" &&
# 	$command --output-directory="$dir" "$base" &&
# 	$command --output-directory="$dir" "$base"
# 	}

textype() { \
	command="pdflatex"
	$command --output-directory="$dir" "$base"
	}

case "$file" in
    *\.ms) iconv -f utf-8 -t koi8-r "$file" | refer -PS -e | groff -me -ms -ejpt -Tps > "$base".ps && ps2pdf "$base".ps "$base".pdf ;;
    # *\.ms)  groff -me -ms -kejpt -T pdf > "$base".pdf ;;
	# *\.mom) iconv -f utf-8 -t koi8-r "$file" | refer -PS -e | groff -mom -kejpt -T pdf > "$base".ps && ps2pdf "$base".ps "$base".pdf ;;
	# *\.mom) refer -PS -e | groff -mom -kejpt -T pdf > "$base".pdf ;;
	*\.mom) refer -PS -e "$file" | groff -mom -kejpt -T pdf > "$base".pdf ;;
	*\.rmd) echo "require(rmarkdown); render('$file')" | R -q --vanilla ;;
	*\.tex) textype "$file" ;;
	*\.md) pandoc "$file" --pdf-engine=xelatex --template=default.latex --variable mainfont="DejaVu Serif" --variable sansfont=Arial -o "$base".pdf ;;
	*config.h) sudo make install ;;
        *\.c) cc "$file" -o "$base" && "$base" ;;
	*\.py) python "$file" ;;
	*\.go) go run "$file" ;;
	*\.sent) setsid sent "$file" 2>/dev/null & ;;
	*) sed 1q "$file" | grep "^#!/" | sed "s/^#!//" | xargs -r -I % "$file" ;;
esac
