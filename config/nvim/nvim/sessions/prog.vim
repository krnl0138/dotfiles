let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/udemy/steele_webdev_bootcamp/assignments
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +68 ~/linux.todo
badd +127 ~/dotfiles/config/nvim/nvim/init.vim
badd +28 ~/udemy/myFiles/react_course/react-complete-guide/src/containers/App.js
badd +589 ~/udemy/myFiles/react_course/notes.md
badd +246 ~/stuff/webdev_bootcamp_steele.md
badd +7 assignment_7.css
badd +1125 ~/stuff/css_jonas_course.md
badd +551 ~/udemy/advanced-css-course/Natours/starter/index.html
badd +12 ~/udemy/advanced-css-course/Natours/starter/package.json
badd +16 ~/udemy/advanced-css-course/Natours/starter/sass/main.scss
badd +28 ~/udemy/advanced-css-course/Natours/starter/sass/abstracts/_variables.scss
badd +28 ~/udemy/advanced-css-course/Natours/starter/sass/base/_base.scss
badd +1 ~/udemy/advanced-css-course/Natours/starter/sass/base/_animations.scss
badd +59 ~/udemy/advanced-css-course/Natours/starter/sass/components/_button.scss
badd +18 ~/udemy/advanced-css-course/Natours/starter/sass/layout/_header.scss
badd +56 ~/udemy/advanced-css-course/Natours/starter/sass/base/_typography.scss
badd +66 ~/udemy/advanced-css-course/Natours/starter/sass/layout/_grid.scss
badd +32 ~/udemy/advanced-css-course/Natours/starter/sass/abstracts/_mixins.scss
badd +103 ~/udemy/advanced-css-course/Natours/starter/sass/pages/_home.scss
badd +8 ~/udemy/advanced-css-course/Natours/starter/sass/base/_utilities.scss
badd +46 ~/udemy/advanced-css-course/Natours/starter/sass/components/_composition.scss
badd +24 ~/udemy/advanced-css-course/Natours/starter/sass/components/_feature-box.scss
badd +224 ~/udemy/advanced-css-course/Natours/starter/sass/components/_card.scss
badd +34 ~/udemy/advanced-css-course/Natours/starter/sass/components/_story.scss
badd +9 ~/udemy/advanced-css-course/Natours/starter/sass/components/_bg-video.scss
badd +19 ~/udemy/advanced-css-course/Natours/starter/sass/components/_form.scss
badd +16 ~/udemy/advanced-css-course/Natours/starter/sass/layout/_footer.scss
badd +280 ~/stuff/programming.md
badd +452 ~/udemy/myFiles/js_course/6-budgety/final/app.js
badd +238 ~/stuff/vim_tips.md
badd +25 ~/udemy/advanced-css-course/Natours/starter/sass/layout/_navigation.scss
badd +2 ~/dotfiles/config/nvim/nvim/coc-settings.json
badd +14 ~/udemy/advanced-css-course/Natours/starter/sass/components/_popup.scss
badd +1087 ~/stuff/composing_software_elliot.md
badd +48 ~/stuff/journal/22052020.md
badd +148 bootstap.html
badd +1 bootstap2.html
badd +40 bootstap2.css
badd +1 assignment_7.html
badd +447 ~/stuff/eloquent_js_haverbeke.md
badd +114 ~/udemy/advanced-css-course/Natours/starter/css/style.css
badd +1 ~/dotfiles/config/nvim/nvim/plugins/vim-snippets/UltiSnips/markdown.snippets
argglobal
%argdel
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_bg-video.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_button.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_card.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_composition.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_feature-box.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_form.scss
$argadd ~/udemy/advanced-css-course/Natours/starter/sass/components/_story.scss
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
3
normal! zo
317
normal! zo
453
normal! zo
542
normal! zo
572
normal! zo
595
normal! zo
759
normal! zo
796
normal! zo
870
normal! zo
let s:l = 1087 - ((30 * winheight(0) + 20) / 41)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1087
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
