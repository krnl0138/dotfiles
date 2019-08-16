" Begin .vimrc

set nocompatible
filetype indent plugin on
syntax on

let mapleader=","

" au BufWritePost .vimrc so ~/.vimrc

" bufwritepost reads up to the end assuming <CR> is a part of a filename

au BufWritePost $HOME/notes/*.md execute "normal ,cdd"

" Disables automatic commenting on newline:
	" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Compile document, be it groff/LaTeX/markdown/etc.
	map <leader>c :w! \| !sh $HOME/scripts/compiler.sh <c-r>%<CR><CR>
" Open corresponding .pdf/.html or preview
	map <leader>p :!sh $HOME/scripts/opout.sh <c-r>%<CR><CR>

nnoremap <F9> :!clear && shellcheck %<CR>

" colorscheme wal
colorscheme sourcerer
set noshowmode 
" set termguicolors
set history=700
set undolevels=700
set title                " change the terminal's title
set novisualbell           " don't beep
set noerrorbells         " don't beep
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
" Formatting tab 
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
" insert tabs on the start of a line according to shiftwidth, not tabstop
set smarttab      
" disable scanning included files
set complete-=i
" disable searching tags
set complete-=t
set modeline 
" show next match while enter string search
set incsearch 
set laststatus=2
" Hide not close buffers e.g. open files wo/ saving changes
set hidden 
" Copy/paste options
set pastetoggle=<F5>
set clipboard=unnamedplus
" display incomplete commands
set showcmd		
" display completion matches in a status line
set wildmenu
" Show @@@ in the last line if it is truncated.
set display=truncate
" Search
set hlsearch
set incsearch
set ignorecase
set smartcase
" History
" set nobackup
" set nowritebackup
" set noswapfile
set backupdir=/home/gppk/.vimbackup/backup
set directory=/home/gppk/.vimbackup/swp
set undodir=/home/gppk/.vimbackup/undo

set mouse=a "using mouse
set bs=2 " Better deleting by backspace
" set backspace=indent,eol,start " allow backspacing over everything in insert mode

" Formatting strings and numbers
set norelativenumber
set number
nmap <F2> :set relativenumber!<CR>
set tw=79
"set wrap   " divides words when over 80th
set nowrap
set fo+=w " to divide strings after words

set path+=**

" Go to beginning or end of line
"nnoremap H ^
"nnoremap L $

" allow to set specific settings for formats
"autocmd filetype python set expandtab

inoremap jk <ESC>
inoremap kj <ESC>
nnoremap ; :
nnoremap : ;
cmap w!! w !sudo tee % >/dev/null

" better indentation
vnoremap < <gv
vnoremap > >gv

" pararagraphs formatting
vmap Q gq
nmap Q gqap

" Undo chronologically instead of tree-model
" nnoremap u g-
" nnoremap U g+

"use this to correct typos I did while recording a macro.
nnoremap <leader>m  :<c-u><c-r><c-r>='let @'. v:register .' = '. string(getreg(v:register))<cr><c-f><left>

" n to always search forward and N backward:
nnoremap <expr> n  'Nn'[v:searchforward]
xnoremap <expr> n  'Nn'[v:searchforward]
onoremap <expr> n  'Nn'[v:searchforward]
nnoremap <expr> N  'nN'[v:searchforward]
xnoremap <expr> N  'nN'[v:searchforward]
onoremap <expr> N  'nN'[v:searchforward]

" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
" which is the default
map Y y$

" SpellCheckers
map <F6> :setlocal spell! spelllang=en_us<CR>
map <F7> :setlocal spell! spelllang=ru_ru<CR>

" Edit/reload .vimrc
" nmap <silent> <leader>ev :e $MYVIMRC<CR>
" nmap <silent> <leader>sv :so $MYVIMRC<CR>

nnoremap <F12> :exe '!chromium %'<CR><CR>

" Create newline with enter in normal mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

" FOLDS
" Toggle open/close on spacebar
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf
" set foldmethod=manual
" Save your foldings
" autocmd BufWritePre,BufWinLeave ?* if MakeViewCheck() | silent! mkview | endif
" autocmd BufWinEnter ?* if MakeViewCheck() | silent! loadview | endif
"hi Folded xxx ctermfg=241 ctermbg=255
"hi Folded term=underline cterm=underline ctermfg=250 ctermbg=255 guifg=Cyan guibg=DarkGrey

" switch through tabs with ctrl-tab
" terminals see no difference in tab & c-tab
nnoremap <C-h> gT
nnoremap <C-l> gt
nnoremap <S-Tab> gt
nnoremap <C-t> :tabnew<CR>

" Toggle highlight in search mode by F4
noremap <F4> :set invhls<CR>

" Move around splits with <c-hjkl>
noremap <S-k> <C-w><Up>
noremap <S-j> <C-w><Down>
noremap <S-l> <C-w><Right>
noremap <S-h> <C-w><Left>

" Navigating with guides
	inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	map <leader><leader> <Esc>/<++><Enter>"_c4l

"BRACKETS
	" autocmd FileType html inoremap ,h <html></html><Esc>bbli
	inoremap { {}<++><Esc>F{a
	inoremap [ []<++><Esc>F[a
	inoremap ( ()<++><Esc>F(a
	inoremap ` ``<++><Esc>F'i
	" inoremap ' ''<++><Esc>F'i
	" inoremap " ""<++><Esc>F"i

"BIB
	autocmd FileType bib inoremap ,a @article{<Enter>author<Space>=<Space>{<++>},<Enter>year<Space>=<Space>{<++>},<Enter>title<Space>=<Space>{<++>},<Enter>journal<Space>=<Space>{<++>},<Enter>volume<Space>=<Space>{<++>},<Enter>pages<Space>=<Space>{<++>},<Enter>}<Enter><++><Esc>8kA,<Esc>i
	autocmd FileType bib inoremap ,b @book{<Enter>author<Space>=<Space>{<++>},<Enter>year<Space>=<Space>{<++>},<Enter>title<Space>=<Space>{<++>},<Enter>publisher<Space>=<Space>{<++>},<Enter>}<Enter><++><Esc>6kA,<Esc>i
	autocmd FileType bib inoremap ,c @incollection{<Enter>author<Space>=<Space>{<++>},<Enter>title<Space>=<Space>{<++>},<Enter>booktitle<Space>=<Space>{<++>},<Enter>editor<Space>=<Space>{<++>},<Enter>year<Space>=<Space>{<++>},<Enter>publisher<Space>=<Space>{<++>},<Enter>}<Enter><++><Esc>8kA,<Esc>i

"LATEX
    au BufWritePost *.tex execute "normal ,cdd"
	" Word count:
	autocmd FileType tex map <leader>w :w !detex \| wc -w<CR>
	" Code snippets
	autocmd FileType tex inoremap ,fr \begin{frame}<Enter>\frametitle{}<Enter><Enter><++><Enter><Enter>\end{frame}<Enter><Enter><++><Esc>6kf}i
	autocmd FileType tex inoremap ,fi \begin{fitch}<Enter><Enter>\end{fitch}<Enter><Enter><++><Esc>3kA
	autocmd FileType tex inoremap ,exe \begin{exe}<Enter>\ex<Space><Enter>\end{exe}<Enter><Enter><++><Esc>3kA
	autocmd FileType tex inoremap ,em \emph{}<++><Esc>T{i
	autocmd FileType tex inoremap ,bf \textbf{}<++><Esc>T{i
	autocmd FileType tex vnoremap , <ESC>`<i\{<ESC>`>2la}<ESC>?\\{<Enter>a
	autocmd FileType tex inoremap ,it \textit{}<++><Esc>T{i
	autocmd FileType tex inoremap ,ct \textcite{}<++><Esc>T{i
	autocmd FileType tex inoremap ,cp \parencite{}<++><Esc>T{i
	autocmd FileType tex inoremap ,glos {\gll<Space><++><Space>\\<Enter><++><Space>\\<Enter>\trans{``<++>''}}<Esc>2k2bcw
	autocmd FileType tex inoremap ,x \begin{xlist}<Enter>\ex<Space><Enter>\end{xlist}<Esc>kA<Space>
	autocmd FileType tex inoremap ,ol \begin{enumerate}<Enter><Enter>\end{enumerate}<Enter><Enter><++><Esc>3kA\item<Space>
	autocmd FileType tex inoremap ,ul \begin{itemize}<Enter><Enter>\end{itemize}<Enter><Enter><++><Esc>3kA\item<Space>
	autocmd FileType tex inoremap ,li <Enter>\item<Space>
	autocmd FileType tex inoremap ,ref \ref{}<Space><++><Esc>T{i
	autocmd FileType tex inoremap ,tab \begin{tabular}<Enter><++><Enter>\end{tabular}<Enter><Enter><++><Esc>4kA{}<Esc>i
	autocmd FileType tex inoremap ,ot \begin{tableau}<Enter>\inp{<++>}<Tab>\const{<++>}<Tab><++><Enter><++><Enter>\end{tableau}<Enter><Enter><++><Esc>5kA{}<Esc>i
	autocmd FileType tex inoremap ,can \cand{}<Tab><++><Esc>T{i
	autocmd FileType tex inoremap ,con \const{}<Tab><++><Esc>T{i
	autocmd FileType tex inoremap ,v \vio{}<Tab><++><Esc>T{i
	autocmd FileType tex inoremap ,a \href{}{<++>}<Space><++><Esc>2T{i
	autocmd FileType tex inoremap ,sc \textsc{}<Space><++><Esc>T{i
	autocmd FileType tex inoremap ,chap \chapter{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ,sec \section{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ,ssec \subsection{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ,sssec \subsubsection{}<Enter><Enter><++><Esc>2kf}i
	autocmd FileType tex inoremap ,st <Esc>F{i*<Esc>f}i
	autocmd FileType tex inoremap ,beg \begin{DELRN}<Enter><++><Enter>\end{DELRN}<Enter><Enter><++><Esc>4k0fR:MultipleCursorsFind<Space>DELRN<Enter>c
	autocmd FileType tex inoremap ,up <Esc>/usepackage<Enter>o\usepackage{}<Esc>i
	autocmd FileType tex nnoremap ,up /usepackage<Enter>o\usepackage{}<Esc>i
	autocmd FileType tex inoremap ,tt \texttt{}<Space><++><Esc>T{i
	autocmd FileType tex inoremap ,bt {\blindtext}
	autocmd FileType tex inoremap ,nu $\varnothing$
	autocmd FileType tex inoremap ,col \begin{columns}[T]<Enter>\begin{column}{.5\textwidth}<Enter><Enter>\end{column}<Enter>\begin{column}{.5\textwidth}<Enter><++><Enter>\end{column}<Enter>\end{columns}<Esc>5kA
	autocmd FileType tex inoremap ,rn (\ref{})<++><Esc>F}i

"HTML
	autocmd FileType html inoremap ,h <html></html><Esc>bbli
	autocmd FileType html inoremap ,b <b></b><Space><++><Esc>FbT>i
	autocmd FileType html inoremap ,it <em></em><Space><++><Esc>FeT>i
	autocmd FileType html inoremap ,1 <h1></h1><Enter><Enter><++><Esc>2kf<i
	autocmd FileType html inoremap ,2 <h2></h2><Enter><Enter><++><Esc>2kf<i
	autocmd FileType html inoremap ,3 <h3></h3><Enter><Enter><++><Esc>2kf<i
	autocmd FileType html inoremap ,p <p></p><Enter><Enter><++><Esc>02kf>a
	autocmd FileType html inoremap ,a <a<Space>href=""><++></a><Space><++><Esc>14hi
	autocmd FileType html inoremap ,e <a<Space>target="_blank"<Space>href=""><++></a><Space><++><Esc>14hi
	autocmd FileType html inoremap ,ul <ul><Enter><li></li><Enter></ul><Enter><Enter><++><Esc>03kf<i
	autocmd FileType html inoremap ,li <Esc>o<li></li><Esc>F>a
	autocmd FileType html inoremap ,ol <ol><Enter><li></li><Enter></ol><Enter><Enter><++><Esc>03kf<i
	autocmd FileType html inoremap ,im <img src="" alt="<++>"><++><esc>Fcf"a
	autocmd FileType html inoremap ,td <td></td><++><Esc>Fdcit
	autocmd FileType html inoremap ,tr <tr></tr><Enter><++><Esc>kf<i
	autocmd FileType html inoremap ,th <th></th><++><Esc>Fhcit
	autocmd FileType html inoremap ,tab <table><Enter></table><Esc>O
	autocmd FileType html inoremap ,gr <font color="green"></font><Esc>F>a
	autocmd FileType html inoremap ,rd <font color="red"></font><Esc>F>a
	autocmd FileType html inoremap ,yl <font color="yellow"></font><Esc>F>a
	autocmd FileType html inoremap ,dt <dt></dt><Enter><dd><++></dd><Enter><++><esc>2kcit
	autocmd FileType html inoremap ,dl <dl><Enter><Enter></dl><enter><enter><++><esc>3kcc
	autocmd FileType html inoremap ,c <code></code><Space><++><Esc>FbT>i
	autocmd FileType html inoremap &<space> &amp;<space>

"MARKDOWN
	autocmd Filetype markdown,rmd map <leader>w yiWi[<esc>Ea](<esc>pa)
	autocmd Filetype markdown,rmd inoremap ,n ---<Enter><Enter>
	autocmd Filetype markdown,rmd inoremap ,b ****<++><Esc>F*hi
	autocmd Filetype markdown,rmd inoremap ,s ~~~~<++><Esc>F~hi
	autocmd Filetype markdown,rmd inoremap ,e **<++><Esc>F*i
	autocmd Filetype markdown,rmd inoremap ,h ====<Space><++><Esc>F=hi
	autocmd Filetype markdown,rmd inoremap ,i ![](<++>)<++><Esc>F[a
	autocmd Filetype markdown,rmd inoremap ,a [](<++>)<++><Esc>F[a
	autocmd Filetype markdown,rmd inoremap ,1 #<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap ,2 ##<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap ,3 ###<Space><Enter><++><Esc>kA
	autocmd Filetype markdown,rmd inoremap ,l --------<Enter>
	autocmd Filetype rmd inoremap ,r ```{r}<CR>```<CR><CR><esc>2kO
	autocmd Filetype rmd inoremap ,p ```{python}<CR>```<CR><CR><esc>2kO
	autocmd Filetype rmd inoremap ,c ```<cr>```<cr><cr><esc>2kO

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
" Make sure you use single quotes
call plug#begin('~/.vim/vimplug')
Plug 'mcchrish/nnn.vim'
Plug 'dylanaraps/wal.vim'
Plug 'tpope/vim-commentary'
Plug 'machakann/vim-sandwich'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/goyo.vim'
Plug 'mileszs/ack.vim'
Plug 'whiteinge/diffconflicts'
Plug 'scrooloose/nerdtree'
Plug 'vimwiki/vimwiki'
Plug 'RRethy/vim-hexokinase'
call plug#end()

" hexokinase

" easyalign settings
    xmap ga <Plug>(EasyAlign)
    nmap ga <Plug>(EasyAlign)
" lightline settings
    let g:lightline = {'colorscheme': 'powerline'}
" Settings for Vimwiki
" Goyo Settings
    map <F3> :Goyo<CR>
" NERDtree Settings
    "autocmd vimenter * NERDTree
    map <C-n> :NERDTreeToggle<CR>
    let g:NERDTreeWinPos = "right"
    " close vim window if only NTree left
    " autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Settings for FASD jumping
" J(Z) - cd to recent / frequent directories
    command! -nargs=* J :call J(<f-args>)
    function! J(...)
    let cmd = 'fasd -d -e printf'
    for arg in a:000
        let cmd = cmd . ' ' . arg
    endfor
    let path = system(cmd)
    if isdirectory(path)
        echo path
        exec 'cd ' . "\"${path}\""
    endif
    endfunction

if has('nvim')
        tnoremap <Esc> <C-\><C-n>
endif
