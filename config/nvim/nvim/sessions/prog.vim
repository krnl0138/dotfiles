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
badd +246 ~/dotfiles/config/nvim/nvim/init.vim
badd +28 ~/udemy/myFiles/react_course/react-complete-guide/src/containers/App.js
badd +589 ~/udemy/myFiles/react_course/notes.md
badd +246 ~/stuff/webdev_bootcamp_steele.md
badd +1333 ~/stuff/css_jonas_course.md
badd +220 ~/stuff/programming.md
badd +1030 ~/stuff/composing_software_elliot.md
badd +48 ~/stuff/journal/22052020.md
badd +447 ~/stuff/eloquent_js_haverbeke.md
badd +379 ~/stuff/css_jonas_course_2.md
badd +20 ~/stuff/cv.md
badd +8 ~/udemy/advanced-css-course/Nexter/starter/package.json
badd +43 ~/udemy/advanced-css-course/Nexter/starter/index.html
badd +1 ~/udemy/advanced-css-course/Nexter/starter/sass/main.scss
badd +21 ~/udemy/advanced-css-course/Nexter/starter/sass/_base.scss
badd +15 ~/udemy/advanced-css-course/Nexter/starter/sass/_sidebar.scss
badd +23 ~/udemy/advanced-css-course/Nexter/starter/sass/_header.scss
badd +30 ~/udemy/advanced-css-course/Nexter/starter/sass/_realtors.scss
badd +8 ~/udemy/advanced-css-course/Nexter/starter/sass/_features.scss
badd +29 ~/udemy/advanced-css-course/Nexter/starter/sass/_story.scss
badd +66 ~/udemy/advanced-css-course/Nexter/starter/sass/_homes.scss
badd +45 ~/udemy/advanced-css-course/Nexter/starter/sass/_footer.scss
badd +25 ~/udemy/advanced-css-course/Nexter/starter/sass/_gallery.scss
badd +356 ~/dotfiles/config/nvim/nvim/plugins/vim-snippets/UltiSnips/html.snippets
badd +9 ~/udemy/advanced-css-course/Nexter/starter/sass/_typography.scss
badd +11 ~/dotfiles/config/nvim/nvim/UltiSnips/scss.snippets
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
edit ~/udemy/advanced-css-course/Nexter/starter/sass/_realtors.scss
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
exe 'vert 1resize ' . ((&columns * 116 + 117) / 234)
exe '2resize ' . ((&lines * 24 + 25) / 51)
exe 'vert 2resize ' . ((&columns * 117 + 117) / 234)
exe '3resize ' . ((&lines * 23 + 25) / 51)
exe 'vert 3resize ' . ((&columns * 117 + 117) / 234)
argglobal
if bufexists("~/udemy/advanced-css-course/Nexter/starter/sass/_realtors.scss") | buffer ~/udemy/advanced-css-course/Nexter/starter/sass/_realtors.scss | else | edit ~/udemy/advanced-css-course/Nexter/starter/sass/_realtors.scss | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 30 - ((28 * winheight(0) + 24) / 48)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
30
normal! 059|
lcd ~/udemy/advanced-css-course/Natours/starter
wincmd w
argglobal
if bufexists("~/stuff/css_jonas_course_2.md") | buffer ~/stuff/css_jonas_course_2.md | else | edit ~/stuff/css_jonas_course_2.md | endif
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
3
normal! zo
258
normal! zo
let s:l = 379 - ((21 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
379
normal! 0
lcd ~/udemy/advanced-css-course/Natours/starter
wincmd w
argglobal
if bufexists("~/udemy/advanced-css-course/Nexter/starter/index.html") | buffer ~/udemy/advanced-css-course/Nexter/starter/index.html | else | edit ~/udemy/advanced-css-course/Nexter/starter/index.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 50 - ((22 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
50
normal! 049|
lcd ~/udemy/advanced-css-course/Natours/starter
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 116 + 117) / 234)
exe '2resize ' . ((&lines * 24 + 25) / 51)
exe 'vert 2resize ' . ((&columns * 117 + 117) / 234)
exe '3resize ' . ((&lines * 23 + 25) / 51)
exe 'vert 3resize ' . ((&columns * 117 + 117) / 234)
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
