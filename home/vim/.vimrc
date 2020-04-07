" Begin .vimrc

set nocompatible
filetype indent plugin on
syntax on

let mapleader=","

" au BufWritePost .vimrc so ~/.vimrc

" bufwritepost reads up to the end assuming <CR> is a part of a filename

au BufWritePost $HOME/notes/*.md execute "normal ,cdd"
autocmd BufWrite * mkview
autocmd BufRead * silent! loadview

nnoremap <F9> :!clear && shellcheck %<CR>
nnoremap <c-s> :terminal<CR>i

" colorscheme wal
colorscheme wombat256mod
" colorscheme sourcerer
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
set backup
set undofile
set backupdir=/home/schizo/.vimbackup/backup
set directory=/home/schizo/.vimbackup/swp
set undodir=/home/schizo/.vimbackup/undo
" set backupdir=/tmp
" set directory=/tmp
" set undodir=/tmp

noremap <leader>y "+y
noremap <leader>y "*y

set mouse=a "using mouse
set bs=2 " Better deleting by backspace
" set backspace=indent,eol,start " allow backspacing over everything in insert
" mode

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
"

" Allow to execute macros by @ on VISUAL only
xnoremap @ :<C-u>call ExecuteMacroOverVisualRange()<CR>

function! ExecuteMacroOverVisualRange()
  echo "@".getcmdline()
  execute ":'<,'>normal @".nr2char(getchar())
endfunction

" allow to set specific settings for formats
"autocmd filetype python set expandtab

nnoremap qq :wq<CR>
nnoremap QQ :q!<CR>
inoremap jk <ESC>
inoremap jj <ESC>
inoremap 11 <ESC>
inoremap kj <ESC>
nnoremap ; :
nnoremap : ;

set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

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


" Edit/reload .vimrc
" nmap <silent> <leader>ev :e $MYVIMRC<CR>
" nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Toggle highlight in search mode by F4
noremap <F4> :set invhls<CR>

" SpellCheckers
nnoremap <F6> :setlocal spell! <CR>
set spelllang=ru,en_gb
inoremap <C-L> <c-g>u<Esc>[s1z=`]a<c-g>u

nnoremap <F12> :exe '!$BROWSER %'<CR><CR>

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
nnoremap <Tab> gt
nnoremap <C-t> :tabnew<CR>

" Move around splits with <c-hjkl>
noremap <S-k> <C-w><Up>
noremap <S-j> <C-w><Down>
noremap <S-l> <C-w><Right>
noremap <S-h> <C-w><Left>

"BIB
autocmd FileType bib inoremap ,a @article{<Enter>author<Space>=<Space>{<++>},<Enter>year<Space>=<Space>{<++>},<Enter>title<Space>=<Space>{<++>},<Enter>journal<Space>=<Space>{<++>},<Enter>volume<Space>=<Space>{<++>},<Enter>pages<Space>=<Space>{<++>},<Enter>}<Enter><++><Esc>8kA,<Esc>i
autocmd FileType bib inoremap ,b @book{<Enter>author<Space>=<Space>{<++>},<Enter>year<Space>=<Space>{<++>},<Enter>title<Space>=<Space>{<++>},<Enter>publisher<Space>=<Space>{<++>},<Enter>}<Enter><++><Esc>6kA,<Esc>i
autocmd FileType bib inoremap ,c @incollection{<Enter>author<Space>=<Space>{<++>},<Enter>title<Space>=<Space>{<++>},<Enter>booktitle<Space>=<Space>{<++>},<Enter>editor<Space>=<Space>{<++>},<Enter>year<Space>=<Space>{<++>},<Enter>publisher<Space>=<Space>{<++>},<Enter>}<Enter><++><Esc>8kA,<Esc>i

"" PLUGINGS
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
" Make sure you use single quotes
call plug#begin('~/.vim/vimplug')
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug '907th/vim-auto-save'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'
Plug 'vim-airline/vim-airline'
Plug 'Yggdroot/indentLine'
" Plug 'vimwiki/vimwiki'
Plug 'vimwiki/vimwiki'
"Plug 'itchyny/lightline.vim'
"Plug 'mcchrish/nnn.vim'
"Plug 'dylanaraps/wal.vim'
"Plug 'machakann/vim-sandwich'
"Plug 'junegunn/vim-easy-align'
"Plug 'junegunn/goyo.vim'
"Plug 'mileszs/ack.vim'
"Plug 'whiteinge/diffconflicts'
"Plug 'scrooloose/nerdtree'
"Plug 'RRethy/vim-hexokinase'
call plug#end()
""

" Vimwiki
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" VIM FZF
" command! Fd call fzf#run(fzf#wrap({'source': 'fd -t f -H . /'}))
command! Fd call fzf#run(fzf#wrap({'source': 'locate /'}))
noremap <c-f> :Fd<CR>

" Vim-Auto-Save
    let g:auto_save = 0
    augroup ft_tex
        au!
        au FileType tex let b:auto_save = 1
    augroup END
    let g:auto_save_silent = 1
    let g:auto_save_events = ["InsertLeave", "TextChanged"]

" easyalign settings
    xmap ga <Plug>(EasyAlign)
    nmap ga <Plug>(EasyAlign)

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

" VIMTEX
let g:tex_flavor='latex'
let g:vimtex_view_method='mupdf'
let g:vimtex_quickfix_mode=0
set conceallevel=2
let g:tex_conceal='abdmgs'

" Ultisnips
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsEditSplit = 'vertical'

if has('nvim')
        tnoremap <Esc> <C-\><C-n>
endif

" hexokinase
"
" Plug 'Yggdroot/indentLine'
" supress default grey tone
" let g:indentLine_setColors = 0

" lightline settings
    " let g:lightline = {'colorscheme': 'powerline'}

" Settings for Vimwiki
"
