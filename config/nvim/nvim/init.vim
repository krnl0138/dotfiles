let mapleader=" "

" POLYGLOT
let g:polyglot_disabled = ['md']
let g:polyglot_disabled = ['markdown']
let g:polyglot_disabled = ['js']
let g:polyglot_disabled = ['javascript']

" VIM_PLUG
""""""""""
call plug#begin('~/.config/nvim/plugins')
" CODE
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets' " default snippets pack
Plug 'sheerun/vim-polyglot'
Plug 'SirVer/ultisnips'
Plug 'mattn/emmet-vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
" Plug 'mhinz/vim-signify'
" Plug 'airblade/vim-gitgutter'
" STATUSLINE
Plug 'itchyny/lightline.vim'
" Plug 'bling/vim-bufferline'
" NAVIGATION
Plug 'preservim/nerdtree'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug 'majutsushi/tagbar'
" Plug 'tpope/vim-unimpaired'
" EXTENTIONS
Plug 'tpope/vim-obsession'
Plug 'aserebryakov/vim-todo-lists'
Plug 'lervag/vimtex' " compiling .tex
" Plug 'plasticboy/vim-markdown' " SLOW! folding, etc. POLYGLOT disabled
Plug 'godlygeek/tabular' " needed for above
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' } " browser
Plug 'conornewton/vim-pandoc-markdown-preview' " don't need really
Plug 'junegunn/goyo.vim'
" https://github.com/dhruvasagar/vim-table-mode
" FILE EDITING
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'machakann/vim-sandwich'
Plug '907th/vim-auto-save' " mb replace w :autoread ?
Plug 'junegunn/vim-easy-align'
Plug 'Yggdroot/indentLine' " indent@lines WARN: MESS `Concealcursor` OPT
" COLORSCHEMES
Plug 'mhartington/oceanic-next'
Plug 'joshdick/onedark.vim'
Plug 'gruvbox-community/gruvbox'
call plug#end()

" OPTIONS
"""""""""""""
" Auto commands
au BufEnter * setlocal fo-=c fo-=r fo-=o  "   Disables automatic commenting on newline
au BufRead * silent! loadview
au BufWrite * mkview " Save folds
au BufWritePre * %s/\s\+$//e              "  Automatically deletes all trailing whitespace on save.
au VimResized * execute "normal! \<c-w>="
au FocusGained,BufEnter * :checktime " reload buffer on outside change

" FILE EXTENSIONS SETTINGS
au BufRead,BufNewFile *.md setlocal tw=79
au BufNewFile,BufRead *.ejs set filetype=html
au FileType javascript,js,html,css,scss set ts=2 sts=2 sw=2
au FileType javascript,html,css,scss ino <buffer> ( ()<Left>
au FileType javascript,html,css,scss ino <buffer> { {}<Left>
au FileType javascript,html,css,scss ino <buffer> {<CR> {<CR>}<Esc>O
au FileType javascript,html,css,scss ino <buffer> [ []<Left>
au FileType javascript,html,css,scss ino <buffer> ' ''<Left>
au FileType javascript,html,css,scss ino <buffer> " ""<Left>
au FileType javascript,html,css,scss ino <buffer> ` ``<Left>
au FileType html,css,scss ino <buffer> < <><Left>

au VimLeave *.tex !texclear.sh %
