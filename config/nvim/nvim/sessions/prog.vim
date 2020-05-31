let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/udemy/steele_webdev_bootcamp/assignments
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +71 ~/linux.todo
badd +246 ~/dotfiles/config/nvim/nvim/init.vim
badd +28 ~/udemy/myFiles/react_course/react-complete-guide/src/containers/App.js
badd +589 ~/udemy/myFiles/react_course/notes.md
badd +314 ~/stuff/webdev_bootcamp_steele.md
badd +1333 ~/stuff/css_jonas_course.md
badd +220 ~/stuff/programming.md
badd +1030 ~/stuff/composing_software_elliot.md
badd +48 ~/stuff/journal/22052020.md
badd +447 ~/stuff/eloquent_js_haverbeke.md
badd +375 ~/stuff/css_jonas_course_2.md
badd +20 ~/stuff/cv.md
badd +43 ~/udemy/steele_webdev_bootcamp/bootstap_section/bootstrap4_data_pattern_project/Bootstrap4_Code/13_Museum_Of_Candy/Starter/index.html
badd +38 ~/udemy/steele_webdev_bootcamp/bootstap_section/bootstrap4_data_pattern_project/Bootstrap4_Code/13_Museum_Of_Candy/Starter/app.css
badd +290 ~/stuff/vim_tips.md
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
edit ~/stuff/webdev_bootcamp_steele.md
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
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
7
normal! zc
53
normal! zo
213
normal! zo
213
normal! zc
53
normal! zc
let s:l = 317 - ((316 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
317
normal! 0
lcd ~/udemy/advanced-css-course/Natours/starter
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
