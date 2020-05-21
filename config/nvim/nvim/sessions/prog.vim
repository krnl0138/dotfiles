let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/udemy/advanced-css-course/Natours/starter/sass/components
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +4 ~/linux.todo
badd +188 ~/dotfiles/config/nvim/nvim/init.vim
badd +28 ~/udemy/myFiles/react_course/react-complete-guide/src/containers/App.js
badd +589 ~/udemy/myFiles/react_course/notes.md
badd +184 ~/stuff/webdev_bootcamp_steele.md
badd +7 ~/udemy/steele_webdev_bootcamp/assignments/assignment_7.css
badd +1 ~/stuff/css_jonas_course.md
badd +279 ~/udemy/advanced-css-course/Natours/starter/index.html
badd +12 ~/udemy/advanced-css-course/Natours/starter/package.json
badd +16 ~/udemy/advanced-css-course/Natours/starter/sass/main.scss
badd +2 ~/udemy/advanced-css-course/Natours/starter/sass/abstracts/_variables.scss
badd +10 ~/udemy/advanced-css-course/Natours/starter/sass/base/_base.scss
badd +1 ~/udemy/advanced-css-course/Natours/starter/sass/base/_animations.scss
badd +92 _button.scss
badd +28 ~/udemy/advanced-css-course/Natours/starter/sass/layout/_header.scss
badd +25 ~/udemy/advanced-css-course/Natours/starter/sass/base/_typography.scss
badd +1 ~/udemy/advanced-css-course/Natours/starter/sass/layout/_grid.scss
badd +9 ~/udemy/advanced-css-course/Natours/starter/sass/abstracts/_mixins.scss
badd +4 ~/udemy/advanced-css-course/Natours/starter/sass/pages/_home.scss
badd +4 ~/udemy/advanced-css-course/Natours/starter/sass/base/_utilities.scss
badd +30 _composition.scss
badd +6 _feature-box.scss
badd +40 _card.scss
badd +21 _story.scss
badd +9 _bg-video.scss
badd +81 _form.scss
badd +43 ~/udemy/advanced-css-course/Natours/starter/sass/layout/_footer.scss
badd +784 ~/stuff/programming.md
badd +452 ~/udemy/myFiles/js_course/6-budgety/final/app.js
badd +63 ~/stuff/vim_tips.md
badd +11 ~/udemy/advanced-css-course/Natours/starter/sass/layout/_navigation.scss
badd +2 ~/dotfiles/config/nvim/nvim/coc-settings.json
badd +24 _popup.scss
badd +466 ~/stuff/composing_software_elliot.md
argglobal
%argdel
$argadd _bg-video.scss
$argadd _button.scss
$argadd _card.scss
$argadd _composition.scss
$argadd _feature-box.scss
$argadd _form.scss
$argadd _story.scss
edit ~/stuff/composing_software_elliot.md
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
if bufexists("~/stuff/composing_software_elliot.md") | buffer ~/stuff/composing_software_elliot.md | else | edit ~/stuff/composing_software_elliot.md | endif
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
134
normal! zo
315
normal! zo
452
normal! zo
let s:l = 1 - ((0 * winheight(0) + 20) / 40)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
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
