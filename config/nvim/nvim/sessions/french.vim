let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +416 french/fr.md
badd +21 french/fr_dic.md
badd +9 french/fr_exc.md
badd +480 english/eng.md
badd +64 english/eng_dic.md
argglobal
%argdel
edit english/eng.md
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
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
5
normal! zo
32
normal! zo
62
normal! zo
80
normal! zo
92
normal! zo
102
normal! zo
110
normal! zo
123
normal! zo
134
normal! zo
160
normal! zo
198
normal! zo
260
normal! zo
281
normal! zo
303
normal! zo
317
normal! zo
343
normal! zo
343
normal! zc
317
normal! zc
422
normal! zo
448
normal! zo
let s:l = 474 - ((13 * winheight(0) + 24) / 49)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
474
normal! 086|
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
