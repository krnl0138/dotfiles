let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +760 stuff/programming.md
badd +1 linux.todo
badd +1 playground.js
badd +17 index.html
badd +427 stuff/composing_software_elliot.md
badd +57 stuff/eloquent_js_haverbeke.md
badd +3 stuff/js_allonge_braithwaite.md
badd +1 stuff/js_allonge_braithwaite
badd +1 stuff/js_allonge_braithwaite
badd +59 udemy/myFiles/react_course/react-complete-guide/src/App.js
badd +0 udemy/myFiles/react_course/react-complete-guide/public/index.html
badd +4 udemy/myFiles/react_course/react-complete-guide/src/Person/Person.js
badd +1 udemy/myFiles/react_course/react-complete-guide/src/Person
badd +0 udemy/myFiles/react_course/react-complete-guide/src/ErrorBoundary/ErrorBoundary.js
badd +5 udemy/myFiles/react_course/react-complete-guide/src/containers/App.js
badd +5 udemy/myFiles/react_course/react-complete-guide/src/components/Persons/Persons.js
badd +4 udemy/myFiles/react_course/react-complete-guide/src/index.js
badd +5 udemy/myFiles/react_course/react-complete-guide/src/components/Cockpit/Cockpit.js
badd +1 udemy/myFiles/react_course/react-complete-guide/src/ErrorBoundary/Cockpit.css
badd +1 udemy/myFiles/react_course/react-complete-guide/src/containers/App.css
badd +0 udemy/myFiles/react_course/react-complete-guide/src/components/Cockpit/Cockpit.css
badd +298 udemy/myFiles/react_course/notes.md
argglobal
%argdel
set stal=2
edit linux.todo
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 45 - ((32 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
45
normal! 020|
lcd ~/udemy/myFiles/react_course/react-complete-guide
tabedit ~/playground.js
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 383 - ((33 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
383
normal! 0
lcd ~/udemy/myFiles/react_course/react-complete-guide
tabedit ~/stuff/programming.md
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
exe 'vert 1resize ' . ((&columns * 129 + 85) / 170)
exe 'vert 2resize ' . ((&columns * 40 + 85) / 170)
exe '3resize ' . ((&lines * 1 + 19) / 38)
exe 'vert 3resize ' . ((&columns * 79 + 85) / 170)
argglobal
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
5
normal! zo
33
normal! zo
57
normal! zo
77
normal! zo
129
normal! zo
142
normal! zo
155
normal! zo
194
normal! zo
201
normal! zo
230
normal! zo
232
normal! zo
286
normal! zo
358
normal! zo
400
normal! zo
417
normal! zo
425
normal! zo
306
normal! zo
310
normal! zo
358
normal! zo
400
normal! zo
417
normal! zo
425
normal! zo
495
normal! zo
555
normal! zo
583
normal! zo
685
normal! zo
let s:l = 215 - ((24 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
215
normal! 025|
lcd ~/
wincmd w
argglobal
enew
file ~/udemy/myFiles/react_course/react-complete-guide/__Tagbar__.3
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
lcd ~/udemy/myFiles/react_course/react-complete-guide
wincmd w
argglobal
enew
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
lcd ~/udemy/myFiles/react_course/react-complete-guide
wincmd w
exe 'vert 1resize ' . ((&columns * 129 + 85) / 170)
exe 'vert 2resize ' . ((&columns * 40 + 85) / 170)
exe '3resize ' . ((&lines * 1 + 19) / 38)
exe 'vert 3resize ' . ((&columns * 79 + 85) / 170)
tabedit ~/stuff/programming.md
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
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
1
normal! zo
5
normal! zo
33
normal! zo
57
normal! zo
77
normal! zo
129
normal! zo
142
normal! zo
155
normal! zo
194
normal! zo
201
normal! zo
230
normal! zo
232
normal! zo
286
normal! zo
358
normal! zo
400
normal! zo
417
normal! zo
425
normal! zo
306
normal! zo
310
normal! zo
358
normal! zo
400
normal! zo
417
normal! zo
425
normal! zo
495
normal! zo
555
normal! zo
583
normal! zo
685
normal! zo
let s:l = 760 - ((31 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
760
normal! 0
lcd ~/udemy/myFiles/react_course/react-complete-guide
tabedit ~/udemy/myFiles/react_course/notes.md
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
let s:l = 288 - ((18 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
288
normal! 0
lcd ~/udemy/myFiles/react_course/react-complete-guide
tabedit ~/udemy/myFiles/react_course/react-complete-guide/src/containers/App.js
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 66 - ((23 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
66
normal! 0
lcd ~/udemy/myFiles/react_course/react-complete-guide
tabedit ~/udemy/myFiles/react_course/react-complete-guide/src/components/Cockpit/Cockpit.js
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 7 - ((6 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 04|
lcd ~/udemy/myFiles/react_course/react-complete-guide/src/components/Cockpit
tabedit ~/udemy/myFiles/react_course/react-complete-guide/src/components/Cockpit/Cockpit.css
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
lcd ~/udemy/myFiles/react_course/react-complete-guide/src/components/Cockpit
tabedit ~/udemy/myFiles/react_course/react-complete-guide/src/components/Persons/Persons.js
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 9 - ((8 * winheight(0) + 17) / 34)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 09|
lcd ~/udemy/myFiles/react_course/react-complete-guide
tabnext 5
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
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
