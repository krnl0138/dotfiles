" Begin .vimrc

set nocompatible
filetype indent plugin on
syntax on

let mapleader=" "

"" PLUGINGS
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
" Make sure you use single quotes
call plug#begin('~/.config/nvim/plugins')
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug 'morhetz/gruvbox'
Plug 'tomasiser/vim-code-dark'
Plug 'majutsushi/tagbar'
Plug 'lervag/vimtex',
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug '907th/vim-auto-save'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
Plug 'conornewton/vim-pandoc-markdown-preview',
Plug 'itchyny/lightline.vim'
"Plug 'mcchrish/nnn.vim'
"Plug 'dylanaraps/wal.vim'
"Plug 'machakann/vim-sandwich'
"Plug 'junegunn/vim-easy-align'
"Plug 'mileszs/ack.vim'
"Plug 'whiteinge/diffconflicts'
"Plug 'RRethy/vim-hexokinase'
call plug#end()

" F-key Bindings
" F2 -- Relative numbers
    nnoremap <F2> :set relativenumber!<CR>
" F4 -- Toggle highlight in search mode by F4
    noremap <F4> :set invhls<CR>
" F5 -- UndoTreee
    nnoremap <F5> :UndotreeToggle<cr>
" F6 -- SpellCheckers
    nnoremap <F6> :setlocal spell! <CR>
    set spelllang=ru,en_gb
" F7 -- PasteToggle
    set pastetoggle=<F7> " to stop intending while pasting " Copy/paste options
" F8 -- TagBar
    nnoremap <F8> :TagbarToggle<CR>
" F9 -- Shellcheck
    nnoremap <F9> :!clear && shellcheck %<CR>
" F12 -- Preview in browser
    nnoremap <F12> :exe '!$BROWSER %'<CR><CR>

set termguicolors
colorscheme gruvbox
set bg=dark
autocmd VimEnter * hi! Normal ctermbg=NONE guibg=NONE
nnoremap <silent> <S-t> :hi! Normal ctermbg=NONE guibg=NONE<CR>
set mouse=a "using mouse
set bs=2 " Enable deleting by backspace
set encoding=utf-8
set title   " change the terminal's title
set noshowmode
set novisualbell    " don't beep
set noerrorbells    " don't beep
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set complete-=i " disable scanning included files
set complete-=t " disable searching tags
set modeline
set incsearch " show next match while enter string search
set laststatus=2
set hidden " Hide not close buffers e.g. open files wo/ saving changes
set clipboard=unnamedplus
set showcmd " display incomplete commands
set wildmenu " Autocompletion
autocmd BufWritePre * %s/\s\+$//e " Automatically deletes all trailing whitespace on save.
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " Disables automatic commenting on newline:
set display=truncate " Show @@@ in the last line if it is truncated.
" Tabs
    set autoindent  " always set autoindenting on
    set copyindent  " copy the previous indentation on autoindenting
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set shiftround
    set expandtab
    set smarttab " insert tabs on the start of a line according to shiftwidth, not tabstop
" Search
    set hlsearch
    set incsearch
    set ignorecase
    set smartcase
" History
    set history=700
    set undolevels=700
    set backup
    set undofile
    set backupdir=~/.config/nvim/backupdir/backup
    set directory=~/.config/nvim/backupdir/swp
    set undodir=~/.config/nvim/backupdir/undo
" Formatting strings and numbers
    set number relativenumber
    " set tw=79
    set nowrap
    set colorcolumn=80
    set textwidth=0 wrapmargin=0
    highlight ColorColumn ctermbg=0 guibg=#141414
" Exit from edit mode
    nnoremap qq :wq<CR>
    nnoremap QQ :q!<CR>
    inoremap jk <ESC>
    inoremap jj <ESC>
    inoremap 11 <ESC>
    inoremap kj <ESC>
    nnoremap ; :
    nnoremap : ;
" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
	set splitbelow splitright
" Not used now
    " cmap w!! w !sudo tee % >/dev/null
" better indentation
    vnoremap < <gv
    vnoremap > >gv
" pararagraphs formatting
    vmap Q gq
    nmap Q gqap
" n to always search forward and N backward:
    nnoremap <expr> n  'Nn'[v:searchforward]
    xnoremap <expr> n  'Nn'[v:searchforward]
    onoremap <expr> n  'Nn'[v:searchforward]
    nnoremap <expr> N  'nN'[v:searchforward]
    xnoremap <expr> N  'nN'[v:searchforward]
    onoremap <expr> N  'nN'[v:searchforward]
" Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy
    map Y y$
" VIM-Terminal
    nnoremap <c-s> :terminal<CR>i
" Create newline with enter in normal mode
    nmap <S-Enter> O<Esc>
    nmap <CR> o<Esc>
" FOLDS
" Toggle open/close on spacebar
    nnoremap , zA
    vnoremap , zf
    autocmd BufWrite * mkview " Save folds
    autocmd BufRead * silent! loadview
" switch through tabs with ctrl-tab
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

" PLUGINS

" " vim fugutive
" define command which will be used when "nvim" is set as a merge tool
" [mergetool "nvim"]
"   cmd = nvim -f -c \"Gdiffsplit!\" \"$MERGED\"
" set "nvim" as tool for merging
" [merge]
"   tool = nvim
" " automatically launch merge tool without displaying a prompt
" [mergetool]
"   prompt = false

" Netrw
" https://github.com/BrodieRobertson/dotfiles/blob/master/config/nvim/init.vim
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 20

function! OpenToRight()
  :normal v
  let g:path=expand('%:p')
  :q!
  execute 'belowright vnew' g:path
  :normal <C-l>
endfunction

function! OpenBelow()
  :normal v
  let g:path=expand('%:p')
  :q!
  execute 'belowright new' g:path
  :normal <C-l>
endfunction


noremap <S-f> :call ToggleNetrw()<CR>
function! NetrwMappings()
    " Hack fix to make ctrl-l work properly
    noremap <buffer> <C-l> <C-w>l
    noremap <S-f> :call ToggleNetrw()<CR>
    noremap <buffer> V :call OpenToRight()<cr>
    noremap <buffer> H :call OpenBelow()<cr>
endfunction

augroup netrw_mappings
    autocmd!
    autocmd filetype netrw call NetrwMappings()
augroup END

" Allow for netrw to be toggled
function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent Lexplore
    endif
endfunction

" Close Netrw if it's the only buffer open
autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw" || &buftype == 'quickfix' |q|endif

" Make netrw act like a project Draw
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :call ToggleNetrw()
" augroup END

let g:NetrwIsOpen=0

" Markdown Preview
" specify browser to open preview page
" default: ''
    let g:mkdp_browser = 'chromium'
    nnoremap <c-p> <Plug>MarkdownPreviewToggle

" VIM FZF
    " command! Fd call fzf#run(fzf#wrap({'source': 'fd -t f -H . /'}))
    command! Fd call fzf#run(fzf#wrap({'source': 'locate /'}))
    noremap <leader>f :Fd<CR>

" Vim-Auto-Save
    let g:auto_save = 0
    augroup ft_tex
        au!
        au FileType tex let b:auto_save = 1
    augroup END
    let g:auto_save_silent = 1
    let g:auto_save_events = ["InsertLeave", "TextChanged"]

    " Function to combine vim-auto-save & vim-pandoc-markdown-preview
    function Autosave_markdown_preview()
        :StartMdPreview
        let g:auto_save = 1
        let g:auto_save_silent = 1
        let g:auto_save_events = ["InsertLeave", "TextChanged"]
    endfunction
    nnoremap <leader>p :call Autosave_markdown_preview()<CR>

" Goyo Settings
	noremap <silent> <leader>g :Goyo \| set wrap linebreak<CR>

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
