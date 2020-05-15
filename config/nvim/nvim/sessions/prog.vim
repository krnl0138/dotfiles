let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +715 stuff/programming.md
badd +9 linux.todo
badd +1 udemy/myFiles/react_course/react-complete-guide/notes.md
badd +366 playground.js
badd +88 dotfiles/config/nvim/nvim/init.vim
badd +1 udemy/myFiles/react_course/react-complete-guide/src/containers/App.js
badd +535 udemy/myFiles/react_course/notes.md
badd +181 stuff/webdev_bootcamp_steele.md
badd +15 stuff/vim_tips.md
badd +37 udemy/steele_webdev_bootcamp/assignments/ex1/selectorsExercise.html
badd +7 udemy/steele_webdev_bootcamp/assignments/assignment_6.html
badd +6 udemy/steele_webdev_bootcamp/assignments/assignment_6.css
badd +0 term://.//591680:/usr/bin/fish
argglobal
%argdel
edit udemy/steele_webdev_bootcamp/assignments/assignment_6.html
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 17 + 19) / 39)
exe 'vert 1resize ' . ((&columns * 84 + 85) / 170)
exe '2resize ' . ((&lines * 18 + 19) / 39)
exe 'vert 2resize ' . ((&columns * 84 + 85) / 170)
exe 'vert 3resize ' . ((&columns * 85 + 85) / 170)
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
let s:l = 11 - ((6 * winheight(0) + 8) / 17)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 022|
wincmd w
argglobal
if bufexists("term://.//591680:/usr/bin/fish") | buffer term://.//591680:/usr/bin/fish | else | edit term://.//591680:/usr/bin/fish | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 18 - ((17 * winheight(0) + 9) / 18)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 0
wincmd w
argglobal
if bufexists("udemy/steele_webdev_bootcamp/assignments/assignment_6.css") | buffer udemy/steele_webdev_bootcamp/assignments/assignment_6.css | else | edit udemy/steele_webdev_bootcamp/assignments/assignment_6.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 6 - ((5 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 011|
wincmd w
exe '1resize ' . ((&lines * 17 + 19) / 39)
exe 'vert 1resize ' . ((&columns * 84 + 85) / 170)
exe '2resize ' . ((&lines * 18 + 19) / 39)
exe 'vert 2resize ' . ((&columns * 84 + 85) / 170)
exe 'vert 3resize ' . ((&columns * 85 + 85) / 170)
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
