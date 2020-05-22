let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/udemy/steele_webdev_bootcamp/assignments
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +11 ~/linux.todo
badd +108 ~/dotfiles/config/nvim/nvim/init.vim
badd +28 ~/udemy/myFiles/react_course/react-complete-guide/src/containers/App.js
badd +589 ~/udemy/myFiles/react_course/notes.md
badd +215 ~/stuff/webdev_bootcamp_steele.md
badd +7 assignment_7.css
badd +1 ~/stuff/css_jonas_course.md
badd +279 ~/udemy/advanced-css-course/Natours/starter/index.html
badd +12 ~/udemy/advanced-css-course/Natours/starter/package.json
badd +16 ~/udemy/advanced-css-course/Natours/starter/sass/main.scss
badd +2 ~/udemy/advanced-css-course/Natours/starter/sass/abstracts/_variables.scss
badd +10 ~/udemy/advanced-css-course/Natours/starter/sass/base/_base.scss
badd +1 ~/udemy/advanced-css-course/Natours/starter/sass/base/_animations.scss
badd +92 ~/udemy/advanced-css-course/Natours/starter/sass/components/_button.scss
badd +28 ~/udemy/advanced-css-course/Natours/starter/sass/layout/_header.scss
badd +25 ~/udemy/advanced-css-course/Natours/starter/sass/base/_typography.scss
badd +1 ~/udemy/advanced-css-course/Natours/starter/sass/layout/_grid.scss
badd +9 ~/udemy/advanced-css-course/Natours/starter/sass/abstracts/_mixins.scss
badd +4 ~/udemy/advanced-css-course/Natours/starter/sass/pages/_home.scss
badd +4 ~/udemy/advanced-css-course/Natours/starter/sass/base/_utilities.scss
badd +30 ~/udemy/advanced-css-course/Natours/starter/sass/components/_composition.scss
badd +6 ~/udemy/advanced-css-course/Natours/starter/sass/components/_feature-box.scss
badd +40 ~/udemy/advanced-css-course/Natours/starter/sass/components/_card.scss
badd +21 ~/udemy/advanced-css-course/Natours/starter/sass/components/_story.scss
badd +9 ~/udemy/advanced-css-course/Natours/starter/sass/components/_bg-video.scss
badd +81 ~/udemy/advanced-css-course/Natours/starter/sass/components/_form.scss
badd +43 ~/udemy/advanced-css-course/Natours/starter/sass/layout/_footer.scss
badd +159 ~/stuff/programming.md
badd +452 ~/udemy/myFiles/js_course/6-budgety/final/app.js
badd +190 ~/stuff/vim_tips.md
badd +11 ~/udemy/advanced-css-course/Natours/starter/sass/layout/_navigation.scss
badd +2 ~/dotfiles/config/nvim/nvim/coc-settings.json
badd +24 ~/udemy/advanced-css-course/Natours/starter/sass/components/_popup.scss
badd +843 ~/stuff/composing_software_elliot.md
badd +22 ~/stuff/journal/22052020.md
badd +148 bootstap.html
badd +64 bootstap2.html
badd +9 bootstap2.css
argglobal
%argdel
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_bg-video.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_button.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_card.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_composition.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_feature-box.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_form.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_story.scss
edit bootstap2.html
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
wincmd =
argglobal
if bufexists("bootstap2.html") | buffer bootstap2.html | else | edit bootstap2.html | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 6 - ((5 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
let s:c = 112 - ((82 * winwidth(0) + 45) / 91)
if s:c > 0
  exe 'normal! ' . s:c . '|zs' . 112 . '|'
else
  normal! 0112|
endif
wincmd w
argglobal
if bufexists("bootstap2.css") | buffer bootstap2.css | else | edit bootstap2.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
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
