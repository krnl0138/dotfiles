let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +950 latin/latin.md
badd +412 latin/latin_dic.md
badd +758 latin/latin_exc.md
badd +2 latin/latin_oxford_course.md
argglobal
%argdel
edit latin/latin.md
set splitbelow splitright
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe '1resize ' . ((&lines * 25 + 26) / 53)
exe '2resize ' . ((&lines * 24 + 26) / 53)
argglobal
setlocal fdm=expr
setlocal fde=Foldexpr_markdown(v:lnum)
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=2
setlocal fml=1
setlocal fdn=20
setlocal fen
1
normal! zo
6
normal! zo
194
normal! zo
199
normal! zo
238
normal! zo
244
normal! zo
256
normal! zo
284
normal! zo
306
normal! zo
362
normal! zo
194
normal! zc
396
normal! zo
404
normal! zo
420
normal! zo
442
normal! zo
473
normal! zo
492
normal! zo
529
normal! zo
559
normal! zo
396
normal! zc
629
normal! zo
634
normal! zo
629
normal! zc
689
normal! zo
696
normal! zo
734
normal! zo
773
normal! zo
782
normal! zo
689
normal! zc
815
normal! zo
820
normal! zo
830
normal! zo
840
normal! zo
815
normal! zc
889
normal! zo
894
normal! zo
901
normal! zo
918
normal! zo
950
normal! zo
976
normal! zo
let s:l = 950 - ((24 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
950
normal! 0
wincmd w
argglobal
if bufexists("latin/latin_dic.md") | buffer latin/latin_dic.md | else | edit latin/latin_dic.md | endif
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
154
normal! zo
279
normal! zo
336
normal! zo
382
normal! zo
406
normal! zo
let s:l = 223 - ((12 * winheight(0) + 12) / 24)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
223
normal! 03|
wincmd w
exe '1resize ' . ((&lines * 25 + 26) / 53)
exe '2resize ' . ((&lines * 24 + 26) / 53)
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
