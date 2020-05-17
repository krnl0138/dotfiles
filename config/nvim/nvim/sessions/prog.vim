let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/udemy/advanced-css-course/Natours/starter/sass/layout
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +165 ~/stuff/programming.md
badd +34 ~/linux.todo
badd +1 ~/udemy/myFiles/react_course/react-complete-guide/notes.md
badd +366 ~/playground.js
badd +130 ~/dotfiles/config/nvim/nvim/init.vim
badd +1 ~/udemy/myFiles/react_course/react-complete-guide/src/containers/App.js
badd +535 ~/udemy/myFiles/react_course/notes.md
badd +184 ~/stuff/webdev_bootcamp_steele.md
badd +30 ~/stuff/vim_tips.md
badd +37 ~/udemy/steele_webdev_bootcamp/assignments/ex1/selectorsExercise.html
badd +17 term://.//591680:/usr/bin/fish
badd +8 ~/udemy/steele_webdev_bootcamp/assignments/assignment_7.css
badd +436 ~/stuff/css_jonas_course.md
badd +1 ~/udemy/advanced-css-course/Natours/starter/index.html
badd +30 ~/udemy/advanced-css-course/Natours/starter/css/style.css
badd +1 ~/udemy/complete-javascript-course
badd +1 ~/term
badd +1 ~/dotfiles/config/sway/sway/config
badd +1 ~/zotero_library/Rescher/Rescher_2003_Epistemology.pdf
badd +1 ~/terminal
badd +4 term://.//73151:/usr/bin/fish
badd +8 term://.//74010:/usr/bin/fish
badd +9 ~/udemy/advanced-css-course/Natours/starter/package.json
badd +2 ~/udemy/advanced-css-course/Natours/starter/sass/main.scss
badd +2 term://.//177191:/usr/bin/fish
badd +4 term://.//177926:/usr/bin/fish
badd +4 ~/udemy/advanced-css-course/Natours/starter/sass/abstracts/_variables.scss
badd +14 ~/udemy/advanced-css-course/Natours/starter/sass/base/_base.scss
badd +1 ~/udemy/advanced-css-course/Natours/starter/sass/base/_animations.scss
badd +1 ~/udemy/advanced-css-course/Natours/starter/sass/components/_button.scss
badd +1 _header.scss
badd +1 ~/udemy/advanced-css-course/Natours/starter/sass/base/_typography.scss
argglobal
%argdel
edit ~/udemy/advanced-css-course/Natours/starter/sass/main.scss
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 85 + 85) / 170)
exe '2resize ' . ((&lines * 17 + 18) / 37)
exe 'vert 2resize ' . ((&columns * 84 + 85) / 170)
exe '3resize ' . ((&lines * 16 + 18) / 37)
exe 'vert 3resize ' . ((&columns * 84 + 85) / 170)
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/udemy/advanced-css-course/Natours/starter
wincmd w
argglobal
if bufexists("~/udemy/advanced-css-course/Natours/starter/index.html") | buffer ~/udemy/advanced-css-course/Natours/starter/index.html | else | edit ~/udemy/advanced-css-course/Natours/starter/index.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
lcd ~/udemy/advanced-css-course/Natours/starter
wincmd w
argglobal
if bufexists("~/stuff/css_jonas_course.md") | buffer ~/stuff/css_jonas_course.md | else | edit ~/stuff/css_jonas_course.md | endif
setlocal fdm=expr
setlocal fde=Foldexpr_markdown(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=3
setlocal fml=1
setlocal fdn=20
setlocal fen
1
normal! zo
114
normal! zo
357
normal! zo
let s:l = 558 - ((15 * winheight(0) + 8) / 16)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
558
normal! 0
lcd ~/udemy/advanced-css-course/Natours/starter
wincmd w
exe 'vert 1resize ' . ((&columns * 85 + 85) / 170)
exe '2resize ' . ((&lines * 17 + 18) / 37)
exe 'vert 2resize ' . ((&columns * 84 + 85) / 170)
exe '3resize ' . ((&lines * 16 + 18) / 37)
exe 'vert 3resize ' . ((&columns * 84 + 85) / 170)
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOFc
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
