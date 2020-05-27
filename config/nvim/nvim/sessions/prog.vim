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
badd +1382 ~/stuff/css_jonas_course.md
badd +161 ~/stuff/programming.md
badd +276 ~/stuff/vim_tips.md
badd +1030 ~/stuff/composing_software_elliot.md
badd +48 ~/stuff/journal/22052020.md
badd +447 ~/stuff/eloquent_js_haverbeke.md
badd +3 ~/udemy/advanced-css-course/Trillo/starter/package.json
badd +3 ~/udemy/advanced-css-course/Trillo/starter/sass/main.scss
badd +162 ~/udemy/advanced-css-course/Trillo/starter/index.html
badd +1 ~/udemy/advanced-css-course/Trillo/starter/css/style.css
badd +33 ~/udemy/advanced-css-course/Trillo/starter/sass/_base.scss
badd +96 ~/udemy/advanced-css-course/Trillo/starter/sass/_components.scss
badd +27 ~/udemy/advanced-css-course/Trillo/starter/sass/_layout.scss
badd +17 ~/udemy/advanced-css-course/Trillo/starter/img/text.txt
badd +105 ~/udemy/advanced-css-course/Trillo/starter_mine/index.html
badd +1 ~/udemy/advanced-css-course/Trillo/starter_mine/sass/main.scss
badd +7 ~/udemy/advanced-css-course/Trillo/starter_mine/package.json
badd +53 ~/udemy/advanced-css-course/Trillo/starter_mine/sass/_layout.scss
badd +334 ~/udemy/advanced-css-course/Trillo/starter_mine/sass/_components.scss
badd +20 ~/udemy/advanced-css-course/Trillo/starter_mine/sass/_base.scss
badd +0 ~/udemy/advanced-css-course/Natours/starter/sass/components/_button.scss
badd +0 ~/udemy/advanced-css-course/Natours/starter/sass/components/_card.scss
badd +0 ~/udemy/advanced-css-course/Natours/starter/sass/components/_composition.scss
badd +0 ~/udemy/advanced-css-course/Natours/starter/sass/components/_feature-box.scss
badd +0 ~/udemy/advanced-css-course/Natours/starter/sass/components/_form.scss
badd +0 ~/udemy/advanced-css-course/Natours/starter/sass/components/_story.scss
argglobal
%argdel
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_bg-video.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_button.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_card.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_composition.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_feature-box.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_form.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_story.scss
set stal=2
edit ~/udemy/advanced-css-course/Trillo/starter_mine/sass/_components.scss
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
if bufexists("~/udemy/advanced-css-course/Trillo/starter_mine/sass/_components.scss") | buffer ~/udemy/advanced-css-course/Trillo/starter_mine/sass/_components.scss | else | edit ~/udemy/advanced-css-course/Trillo/starter_mine/sass/_components.scss | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 335 - ((25 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
335
normal! 09|
lcd ~/udemy/advanced-css-course/Natours/starter
wincmd w
argglobal
if bufexists("~/udemy/advanced-css-course/Trillo/starter_mine/sass/_layout.scss") | buffer ~/udemy/advanced-css-course/Trillo/starter_mine/sass/_layout.scss | else | edit ~/udemy/advanced-css-course/Trillo/starter_mine/sass/_layout.scss | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 53 - ((6 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
53
normal! 018|
lcd ~/udemy/advanced-css-course/Natours/starter
wincmd w
argglobal
if bufexists("~/udemy/advanced-css-course/Trillo/starter_mine/index.html") | buffer ~/udemy/advanced-css-course/Trillo/starter_mine/index.html | else | edit ~/udemy/advanced-css-course/Trillo/starter_mine/index.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 197 - ((28 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
197
normal! 030|
lcd ~/udemy/advanced-css-course/Natours/starter
wincmd w
argglobal
if bufexists("~/udemy/advanced-css-course/Trillo/starter_mine/sass/_base.scss") | buffer ~/udemy/advanced-css-course/Trillo/starter_mine/sass/_base.scss | else | edit ~/udemy/advanced-css-course/Trillo/starter_mine/sass/_base.scss | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 41 - ((11 * winheight(0) + 6) / 12)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
41
normal! 0
lcd ~/udemy/advanced-css-course/Natours/starter
wincmd w
wincmd =
tabedit ~/udemy/advanced-css-course/Trillo/starter/index.html
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
wincmd =
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
let s:l = 166 - ((15 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
166
normal! 025|
lcd ~/udemy/advanced-css-course/Natours/starter
wincmd w
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
let s:l = 42 - ((0 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
42
normal! 0
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
3
normal! zo
9
normal! zo
11
normal! zo
42
normal! zo
66
normal! zo
98
normal! zo
113
normal! zo
129
normal! zo
217
normal! zo
269
normal! zo
327
normal! zo
329
normal! zo
440
normal! zo
478
normal! zo
502
normal! zo
504
normal! zo
552
normal! zo
570
normal! zo
616
normal! zo
641
normal! zo
679
normal! zo
705
normal! zo
749
normal! zo
813
normal! zo
897
normal! zo
936
normal! zo
968
normal! zo
970
normal! zo
1040
normal! zo
1060
normal! zo
1148
normal! zo
1150
normal! zo
1168
normal! zo
1268
normal! zo
1292
normal! zo
1330
normal! zo
1332
normal! zo
1432
normal! zo
1470
normal! zo
1507
normal! zo
1582
normal! zo
1607
normal! zo
1663
normal! zo
1671
normal! zo
1679
normal! zo
let s:l = 628 - ((9 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
628
normal! 0
lcd ~/udemy/advanced-css-course/Natours/starter
wincmd w
wincmd =
tabnext 1
set stal=1
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
