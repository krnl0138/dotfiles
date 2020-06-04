let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/udemy/steele_webdev_bootcamp/todoListProject/assets
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +71 ~/linux.todo
badd +304 ~/dotfiles/config/nvim/nvim/init.vim
badd +28 ~/udemy/myFiles/react_course/react-complete-guide/src/containers/App.js
badd +589 ~/udemy/myFiles/react_course/notes.md
badd +889 ~/stuff/webdev_bootcamp_steele.md
badd +1333 ~/stuff/css_jonas_course.md
badd +447 ~/stuff/programming.md
badd +1030 ~/stuff/composing_software_elliot.md
badd +48 ~/stuff/journal/22052020.md
badd +447 ~/stuff/eloquent_js_haverbeke.md
badd +375 ~/stuff/css_jonas_course_2.md
badd +20 ~/stuff/cv.md
badd +88 ~/stuff/vim_tips.md
badd +17 ~/udemy/steele_webdev_bootcamp/backendSection/echo.js
badd +37 ~/stuff/oop.md
badd +11 ~/udemy/steele_webdev_bootcamp/backendSection/demoApp/app.js
argglobal
%argdel
$argadd ~/udemy/steele_webdev_bootcamp/pataponClone/index.html
$argadd ~/udemy/steele_webdev_bootcamp/pataponClone/index.js
$argadd ~/udemy/steele_webdev_bootcamp/pataponClone/sounds.zip
$argadd ~/udemy/steele_webdev_bootcamp/pataponClone/style.css
edit ~/udemy/steele_webdev_bootcamp/backendSection/demoApp/app.js
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
exe 'vert 1resize ' . ((&columns * 110 + 111) / 222)
exe 'vert 2resize ' . ((&columns * 111 + 111) / 222)
argglobal
if bufexists("~/udemy/steele_webdev_bootcamp/backendSection/demoApp/app.js") | buffer ~/udemy/steele_webdev_bootcamp/backendSection/demoApp/app.js | else | edit ~/udemy/steele_webdev_bootcamp/backendSection/demoApp/app.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 10 - ((9 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 0
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
let s:l = 891 - ((17 * winheight(0) + 21) / 42)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
891
normal! 0
lcd ~/udemy/advanced-css-course/Natours/starter
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 110 + 111) / 222)
exe 'vert 2resize ' . ((&columns * 111 + 111) / 222)
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
