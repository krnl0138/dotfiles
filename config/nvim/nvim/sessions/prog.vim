let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/udemy/steele_webdev_bootcamp/assignments
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +4 ~/linux.todo
badd +63 ~/dotfiles/config/nvim/nvim/init.vim
badd +28 ~/udemy/myFiles/react_course/react-complete-guide/src/containers/App.js
badd +589 ~/udemy/myFiles/react_course/notes.md
badd +246 ~/stuff/webdev_bootcamp_steele.md
badd +7 assignment_7.css
badd +1624 ~/stuff/css_jonas_course.md
badd +160 ~/stuff/programming.md
badd +276 ~/stuff/vim_tips.md
badd +1030 ~/stuff/composing_software_elliot.md
badd +48 ~/stuff/journal/22052020.md
badd +447 ~/stuff/eloquent_js_haverbeke.md
badd +3 ~/udemy/advanced-css-course/Trillo/starter/package.json
badd +3 ~/udemy/advanced-css-course/Trillo/starter/sass/main.scss
badd +154 ~/udemy/advanced-css-course/Trillo/starter/index.html
badd +1 ~/udemy/advanced-css-course/Trillo/starter/css/style.css
badd +19 ~/udemy/advanced-css-course/Trillo/starter/sass/_base.scss
badd +329 ~/udemy/advanced-css-course/Trillo/starter/sass/_components.scss
badd +52 ~/udemy/advanced-css-course/Trillo/starter/sass/_layout.scss
badd +5 ~/udemy/advanced-css-course/Trillo/starter/img/text.txt
argglobal
%argdel
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_bg-video.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_button.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_card.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_composition.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_feature-box.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_form.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_story.scss
edit ~/udemy/advanced-css-course/Trillo/starter/sass/_layout.scss
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
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
wincmd =
argglobal
if bufexists("~/udemy/advanced-css-course/Trillo/starter/sass/_layout.scss") | buffer ~/udemy/advanced-css-course/Trillo/starter/sass/_layout.scss | else | edit ~/udemy/advanced-css-course/Trillo/starter/sass/_layout.scss | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 35 - ((12 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
35
normal! 05|
lcd ~/udemy/advanced-css-course/Natours/starter
wincmd w
argglobal
if bufexists("~/udemy/advanced-css-course/Trillo/starter/sass/_components.scss") | buffer ~/udemy/advanced-css-course/Trillo/starter/sass/_components.scss | else | edit ~/udemy/advanced-css-course/Trillo/starter/sass/_components.scss | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 329 - ((20 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
329
normal! 022|
lcd ~/udemy/advanced-css-course/Natours/starter
wincmd w
argglobal
if bufexists("~/stuff/css_jonas_course.md") | buffer ~/stuff/css_jonas_course.md | else | edit ~/stuff/css_jonas_course.md | endif
setlocal fdm=expr
setlocal fde=Foldexpr_markdown(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
1
normal! zo
let s:l = 1624 - ((20 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1624
normal! 035|
lcd ~/udemy/advanced-css-course/Natours/starter
wincmd w
argglobal
if bufexists("~/udemy/advanced-css-course/Trillo/starter/index.html") | buffer ~/udemy/advanced-css-course/Trillo/starter/index.html | else | edit ~/udemy/advanced-css-course/Trillo/starter/index.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 140 - ((2 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
140
let s:c = 49 - ((34 * winwidth(0) + 46) / 93)
if s:c > 0
  exe 'normal! ' . s:c . '|zs' . 49 . '|'
else
  normal! 049|
endif
lcd ~/udemy/advanced-css-course/Natours/starter
wincmd w
2wincmd w
wincmd =
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
