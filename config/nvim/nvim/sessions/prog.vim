let SessionLoad = 1
let s:so_save = &g:so | let s:siso_save = &g:siso | setg so=0 siso=0 | setl so=-1 siso=-1
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/vosk-api/python/example
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 ~/linux.todo
badd +93 ~/dotfiles/config/nvim/nvim/init.vim
badd +28 ~/udemy/myFiles/react_course/react-complete-guide/src/containers/App.js
badd +589 ~/udemy/myFiles/react_course/notes.md
badd +1483 ~/stuff/webdev_bootcamp_steele.md
badd +1333 ~/stuff/css_jonas_course.md
badd +160 ~/stuff/programming.md
badd +1030 ~/stuff/composing_software_elliot.md
badd +48 ~/stuff/journal/22052020.md
badd +447 ~/stuff/eloquent_js_haverbeke.md
badd +375 ~/stuff/css_jonas_course_2.md
badd +20 ~/stuff/cv.md
badd +88 ~/stuff/vim_tips.md
badd +17 ~/udemy/steele_webdev_bootcamp/backendSection/echo.js
badd +37 ~/stuff/oop.md
badd +10 ~/udemy/steele_webdev_bootcamp/backendSection/demoApp/app.js
badd +1 ~/udemy/steele_webdev_bootcamp/pataponClone/index.js
badd +1 ~/udemy/steele_webdev_bootcamp/pataponClone/sounds.zip
badd +1 ~/udemy/steele_webdev_bootcamp/pataponClone/style.css
badd +0 ~/udemy/steele_webdev_bootcamp/pataponClone/index.html
argglobal
%argdel
$argadd ~/udemy/steele_webdev_bootcamp/pataponClone/index.html
$argadd ~/udemy/steele_webdev_bootcamp/pataponClone/index.js
$argadd ~/udemy/steele_webdev_bootcamp/pataponClone/sounds.zip
$argadd ~/udemy/steele_webdev_bootcamp/pataponClone/style.css
edit ~/linux.todo
let s:save_splitbelow = &splitbelow
let s:save_splitright = &splitright
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
let &splitbelow = s:save_splitbelow
let &splitright = s:save_splitright
wincmd t
let s:save_winminheight = &winminheight
let s:save_winminwidth = &winminwidth
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 48 + 58) / 116)
exe 'vert 2resize ' . ((&columns * 67 + 58) / 116)
argglobal
if bufexists("~/linux.todo") | buffer ~/linux.todo | else | edit ~/linux.todo | endif
if &buftype ==# 'terminal'
  silent file ~/linux.todo
endif
setlocal fdm=expr
setlocal fde=Foldexpr_markdown(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
argglobal
if bufexists("~/stuff/webdev_bootcamp_steele.md") | buffer ~/stuff/webdev_bootcamp_steele.md | else | edit ~/stuff/webdev_bootcamp_steele.md | endif
if &buftype ==# 'terminal'
  silent file ~/stuff/webdev_bootcamp_steele.md
endif
balt ~/linux.todo
setlocal fdm=expr
setlocal fde=Foldexpr_markdown(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=3
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 1 - ((0 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
keepjumps exe s:l
normal! zt
keepjumps 1
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 48 + 58) / 116)
exe 'vert 2resize ' . ((&columns * 67 + 58) / 116)
tabnext 1
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0&& getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOFc
let &winminheight = s:save_winminheight
let &winminwidth = s:save_winminwidth
let s:sx = expand("<sfile>:p:r")."x.vim"
if filereadable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &g:so = s:so_save | let &g:siso = s:siso_save
nohlsearch
let g:this_session = v:this_session
let g:this_obsession = v:this_session
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
