let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/udemy/steele_webdev_bootcamp/todoListProject/assets
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +45 ~/linux.todo
badd +93 ~/dotfiles/config/nvim/nvim/init.vim
badd +28 ~/udemy/myFiles/react_course/react-complete-guide/src/containers/App.js
badd +589 ~/udemy/myFiles/react_course/notes.md
badd +1437 ~/stuff/webdev_bootcamp_steele.md
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
argglobal
%argdel
$argadd ~/udemy/steele_webdev_bootcamp/pataponClone/index.html
$argadd ~/udemy/steele_webdev_bootcamp/pataponClone/index.js
$argadd ~/udemy/steele_webdev_bootcamp/pataponClone/sounds.zip
$argadd ~/udemy/steele_webdev_bootcamp/pataponClone/style.css
edit ~/linux.todo
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 71 + 85) / 170)
exe 'vert 2resize ' . ((&columns * 98 + 85) / 170)
argglobal
if bufexists("~/linux.todo") | buffer ~/linux.todo | else | edit ~/linux.todo | endif
setlocal fdm=expr
setlocal fde=Foldexpr_markdown(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
let s:l = 45 - ((33 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
45
normal! 042|
lcd ~/udemy/advanced-css-course/Natours/starter
wincmd w
argglobal
if bufexists("~/stuff/webdev_bootcamp_steele.md") | buffer ~/stuff/webdev_bootcamp_steele.md | else | edit ~/stuff/webdev_bootcamp_steele.md | endif
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
121
normal! zo
213
normal! zo
240
normal! zo
257
normal! zo
274
normal! zo
310
normal! zo
312
normal! zo
357
normal! zo
673
normal! zo
730
normal! zo
730
normal! zo
755
normal! zo
755
normal! zo
755
normal! zo
755
normal! zo
763
normal! zo
970
normal! zo
1063
normal! zo
1072
normal! zo
1117
normal! zo
1180
normal! zo
1208
normal! zo
1226
normal! zo
1354
normal! zo
let s:l = 1437 - ((35 * winheight(0) + 18) / 36)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1437
normal! 012|
lcd ~/udemy/advanced-css-course/Natours/starter
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 71 + 85) / 170)
exe 'vert 2resize ' . ((&columns * 98 + 85) / 170)
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
