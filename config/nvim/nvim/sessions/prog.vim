let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/udemy/steele_webdev_bootcamp/scoreKeeper
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +71 ~/linux.todo
badd +246 ~/dotfiles/config/nvim/nvim/init.vim
badd +28 ~/udemy/myFiles/react_course/react-complete-guide/src/containers/App.js
badd +589 ~/udemy/myFiles/react_course/notes.md
badd +441 ~/stuff/webdev_bootcamp_steele.md
badd +1333 ~/stuff/css_jonas_course.md
badd +161 ~/stuff/programming.md
badd +1030 ~/stuff/composing_software_elliot.md
badd +48 ~/stuff/journal/22052020.md
badd +447 ~/stuff/eloquent_js_haverbeke.md
badd +375 ~/stuff/css_jonas_course_2.md
badd +20 ~/stuff/cv.md
badd +43 ~/udemy/steele_webdev_bootcamp/bootstap_section/bootstrap4_data_pattern_project/Bootstrap4_Code/13_Museum_Of_Candy/Starter/index.html
badd +38 ~/udemy/steele_webdev_bootcamp/bootstap_section/bootstrap4_data_pattern_project/Bootstrap4_Code/13_Museum_Of_Candy/Starter/app.css
badd +317 ~/stuff/vim_tips.md
badd +1 ~/udemy/advanced-css-course/Natours/starter/sass/components/_button.scss
badd +1 ~/udemy/advanced-css-course/Natours/starter/sass/components/_card.scss
badd +1 ~/udemy/advanced-css-course/Natours/starter/sass/components/_composition.scss
badd +1 ~/udemy/advanced-css-course/Natours/starter/sass/components/_feature-box.scss
badd +1 ~/udemy/advanced-css-course/Natours/starter/sass/components/_form.scss
badd +1 ~/udemy/advanced-css-course/Natours/starter/sass/components/_story.scss
badd +49 ~/test.html
badd +11 scoreKeeper.html
badd +2 scorekeeper.js
badd +2 scorekeeper.css
badd +2 ~/dotfiles/config/nvim/nvim/UltiSnips/javascript.snippets
badd +1 ~/udemy/steele_webdev_bootcamp/todoListDemo/index.js
badd +11 ~/udemy/steele_webdev_bootcamp/todoListDemo/index.html
badd +1 term://.//214464:/usr/bin/fish
badd +2 ~/udemy/steele_webdev_bootcamp/todoListDemo/style.css
argglobal
%argdel
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_bg-video.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_button.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_card.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_composition.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_feature-box.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_form.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_story.scss
edit ~/stuff/programming.md
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
exe 'vert 1resize ' . ((&columns * 109 + 109) / 219)
exe '2resize ' . ((&lines * 21 + 23) / 46)
exe 'vert 2resize ' . ((&columns * 109 + 109) / 219)
exe '3resize ' . ((&lines * 21 + 23) / 46)
exe 'vert 3resize ' . ((&columns * 109 + 109) / 219)
argglobal
if bufexists("~/stuff/programming.md") | buffer ~/stuff/programming.md | else | edit ~/stuff/programming.md | endif
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
142
normal! zo
205
normal! zo
221
normal! zo
261
normal! zo
377
normal! zo
381
normal! zo
let s:l = 392 - ((21 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
392
normal! 011|
lcd ~/udemy/advanced-css-course/Natours/starter
wincmd w
argglobal
if bufexists("~/udemy/steele_webdev_bootcamp/todoListDemo/index.js") | buffer ~/udemy/steele_webdev_bootcamp/todoListDemo/index.js | else | edit ~/udemy/steele_webdev_bootcamp/todoListDemo/index.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
lcd ~/udemy/advanced-css-course/Natours/starter
wincmd w
argglobal
if bufexists("~/udemy/steele_webdev_bootcamp/todoListDemo/style.css") | buffer ~/udemy/steele_webdev_bootcamp/todoListDemo/style.css | else | edit ~/udemy/steele_webdev_bootcamp/todoListDemo/style.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 10) / 21)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 021|
lcd ~/udemy/advanced-css-course/Natours/starter
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 109 + 109) / 219)
exe '2resize ' . ((&lines * 21 + 23) / 46)
exe 'vert 2resize ' . ((&columns * 109 + 109) / 219)
exe '3resize ' . ((&lines * 21 + 23) / 46)
exe 'vert 3resize ' . ((&columns * 109 + 109) / 219)
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
