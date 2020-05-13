" Begin .vimrc

syntax on
filetype indent plugin on
let mapleader=" "

" VIM_PLUG
""""""""""
" Make sure you use single quotes

call plug#begin('~/.config/nvim/plugins')
" CODE
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
" STATUSLINE
Plug 'itchyny/lightline.vim'
Plug 'bling/vim-bufferline'
" NAVIGATION
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug 'majutsushi/tagbar'
" EXTENTIONS
Plug 'tpope/vim-obsession'
Plug 'aserebryakov/vim-todo-lists'
Plug 'lervag/vimtex' " compiling .tex
Plug 'plasticboy/vim-markdown' " folding, fenced syntax, etc.
Plug 'godlygeek/tabular' "needed for above
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' } " browser
Plug 'conornewton/vim-pandoc-markdown-preview' " don't need really
" SNIPPETS
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" FILE EDITING
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'machakann/vim-sandwich'
Plug '907th/vim-auto-save'
Plug 'junegunn/vim-easy-align'
Plug 'Yggdroot/indentLine' " add vert lines at indent
" COLORSCHEMES
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'drewtempelmeyer/palenight.vim'
" OTHER

" LATER
" https://github.com/Xuyuanp/nerdtree-git-plugin
" https://github.com/nkzawa/js-inspector.vim
" https://github.com/dstein64/vim-win
" https://github.com/dstein64/vim-startuptime
" https://github.com/dhruvasagar/vim-prosession
"Plug 'dense-analysis/ale'
"Plug 'ycm-core/YouCompleteMe'
"Plug 'janko/vim-test'
" https://github.com/mengelbrecht/lightline-bufferline // was overwritten by COC
call plug#end()

" SET OPTIONS
"""""""""""""
" look at :help nvim-defaults
    set cmdheight=2           " More space for messages
    set conceallevel=2        " Determine what to conceal
    set concealcursor=""
    set clipboard=unnamedplus
    set cursorline
    set modeline
    set mouse=a
    set noshowmode
    set foldcolumn=2          " visible level of folds in sidebar
    set title                 " change the terminal's title
    set pumblend=20           " set pum background visibility to 20 percent
    set splitbelow splitright " Open new split panes to right and bottom, which feels more natural
    set lazyredraw            " do not redraw screen while macro is working
    set number relativenumber
    set nowrap
    set colorcolumn=80
    highlight colorcolumn ctermbg=0 guibg=#141414
    set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" JS & HTML SETTINGS
    autocmd FileType javascript, html set tabstop=2
    autocmd FileType javascript, html set shiftwidth=2
    autocmd FileType javascript inoremap <buffer> ( ()<Esc>i
    autocmd FileType javascript inoremap <buffer> { {}<Esc>i
    autocmd FileType javascript inoremap <buffer> {<CR> {<CR>}<Esc>O
    autocmd FileType javascript inoremap <buffer> [ []<Esc>i
    autocmd FileType javascript inoremap <buffer> < <><Esc>i
    autocmd FileType javascript inoremap <buffer> ' ''<Esc>i
    autocmd FileType javascript inoremap <buffer> " ""<Esc>i
    autocmd FileType javascript inoremap <buffer> ` ``<Esc>i
    autocmd FileType html inoremap <buffer> ( ()<Esc>i
    autocmd FileType html inoremap <buffer> { {}<Esc>i
    autocmd FileType html inoremap <buffer> {<CR> {<CR>}<Esc>O
    autocmd FileType html inoremap <buffer> [ []<Esc>i
    autocmd FileType html inoremap <buffer> < <><Esc>i
    autocmd FileType html inoremap <buffer> ' ''<Esc>i
    autocmd FileType html inoremap <buffer> " ""<Esc>i
    autocmd FileType html inoremap <buffer> ` ``<Esc>i

" COLORS
    set termguicolors
    colorscheme onedark
    set background=dark
    " hi Normal ctermbg=none
    " hi Terminal ctermbg=none
    " hi Terminal guibg=none
    " hi Normal guibg=none

" SEARCH & FIND
    set ignorecase
    set smartcase
    set path+=**
    set wildignore+=**/node_modules/**
    set hidden " Hide not close buffers

" TABS & SPLITS
    set autoindent
    set copyindent  " copy the previous indentation on autoindenting
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set shiftround
    set expandtab

" HISTORY
    set backup
    set undofile
    set backupdir=~/.local/share/nvim/backupdir/backup
    set undodir=~/.local/share/nvim/backupdir/undo
    set directory=~/.local/share/nvim/backupdir/swp

" MISC
    autocmd BufEnter * setlocal fo-=c fo-=r fo-=o  "   Disables automatic commenting on newline
    autocmd BufWritePre * %s/\s\+$//e              "  Automatically deletes all trailing whitespace on save.

" MAPPINGS
" ========

noremap <leader>b :Buffers
nnoremap <leader><leader> :Buffers<CR>


    noremap ; :
    noremap : ;
" Center after goto bookmark
    nnoremap <expr> ' "'" . nr2char(getchar()) . "zz"
    nnoremap <expr> ` "`" . nr2char(getchar()) . "zz"
" Center jumps
    nnoremap <C-o> <C-o>zz
    nnoremap <C-i> <C-i>zz
" Center on selections. Ruins `gn` object
    " nnoremap n nzz
    " nnoremap N Nzz
" INSERT mode moves
    inoremap <C-d> <BS>
    inoremap <C-h> <Left>
    inoremap <C-j> <Down>
    inoremap <C-k> <Up>
    inoremap <C-l> <Right>
" MOVE VISUAL RANGE AROUND
    vnoremap <C-j> :m '>+1<CR>gv=gv
    vnoremap <C-k> :m '<-2<CR>gv=gv
" Substitute easy
    nnoremap S :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>
    vnoremap s :s///gc<Left><Left><Left><Left>
" Y like D
    nnoremap Y y$
" TERMINAL
    tnoremap <Esc> <C-\><C-n>
    nnoremap <C-s> :terminal<CR>i
" PARARAGRAPHS FORMATTING
    vnoremap Q gq
    nnoremap Q gqap
" Enter for newline
    nnoremap <CR> o<Esc>
    nnoremap <S-CR> O<Esc>
" VIMRC SOURCE
    nnoremap <leader>ev :vsp $MYVIMRC<CR>
    nnoremap <leader>sv :source $MYVIMRC <bar> :doautocmd BufRead<CR>
" VimPlug
    nnoremap <leader>pi :PlugInstall<CR>
    nnoremap <leader>pu :PlugUpdate<CR>
    nnoremap <leader>pc :PlugClean<CR>
" F-KEY BINDINGS
    " nnoremap <F1>
    nnoremap <F2> :set relativenumber!<CR>
    " nnoremap <F3>
    nnoremap <F4> :set invhls<CR> " disable hightlight for search
    nnoremap <F5> :UndotreeToggle<CR>
    nnoremap <F6> :setlocal spell! spelllang=ru,en_gb<CR>
    set pastetoggle=<F7> " to stop intending while pasting
    nnoremap <F8> :TagbarToggle<CR>
    nnoremap <F9> :!clear && shellcheck %<CR>
    " nnoremap <F10>
    " nnoremap <F11>
    nnoremap <F12> :exe '!$BROWSER %'<CR><CR>
" Move around windows with Shift-HJKL
    noremap <silent><s-h> <C-w><left>
    noremap <silent><s-j> <C-w><down>
    noremap <silent><s-k> <C-w><up>
    noremap <silent><s-l> <C-w><right>
    tnoremap <silent><s-h> <C-\><C-n><C-w>h
    tnoremap <silent><s-j> <C-\><C-n><C-w>j
    tnoremap <silent><s-k> <C-\><C-n><C-w>k
    tnoremap <silent><s-l> <C-\><C-n><C-w>l
" Windows resize
    nnoremap <silent> <Leader>- :vertical resize -5<CR>
    nnoremap <silent> <Leader>= :vertical resize +5<CR>
" EXIT FROM EDIT MODE
    inoremap ;; <esc>
    vnoremap ;; <esc>
" BETTER INDENTATION
    vnoremap < <gv
    vnoremap > >gv
    nnoremap > >>
    nnoremap < <<
" FOLDS
    nnoremap <leader>, za
    vnoremap <leader>, zf
    autocmd BufWrite * mkview " Save folds
    autocmd BufRead * silent! loadview

" PLUGINS
" =======


" LIGHTLINE
function! LightlineObsession()
    return '%{ObsessionStatus()}'
endfunction

let g:lightline = {
\ 'colorscheme': 'wombat',
\ 'active': {
\   'left': [ [ 'mode', 'paste' ],
\             [ 'cocstatus', 'readonly', 'filename', 'modified' ], ['obsession'] ]
\ },
\ 'component_function': {
\   'cocstatus': 'coc#status'
\ },
\ 'component_expand': {
\   'obsession': 'LightlineObsession'
\ },
\ }

" Use auocmd to force lightline update.
autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()


" NERDTree
nnoremap <leader>f :NERDTreeToggle<CR>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeShowHidden=1
" let g:NERDTreeQuitOnOpen=1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1

" VIM-MARKDOWN
let g:vim_markdown_folding_level = 3
let g:vim_markdown_override_foldtext = 1
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_fenced_languages = ['js=javascript']
let g:vim_markdown_new_list_item_indent = 2

" POLYGLOT
" ~/.vimrc, declare this variable before polyglot is loaded
" let g:polyglot_disabled = ['markdown']

" INDENTLINE
let g:indentLine_concealcursor = ""

" YCM
    function! GoYCM()
        nnoremap <buffer> <silent> <leader>gd :YcmCompleter GoTo<CR>
        nnoremap <buffer> <silent> <leader>gr :YcmCompleter GoToReferences<CR>
        nnoremap <buffer> <silent> <leader>rr :YcmCompleter RefactorRename<space>
    endfunction

" COC

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" GoTo code navigation.
    nmap <buffer> <leader>gd <Plug>(coc-definition)
    nmap <buffer> <leader>gy <Plug>(coc-type-definition)
    nmap <buffer> <leader>gi <Plug>(coc-implementation)
    nmap <buffer> <leader>gr <Plug>(coc-references)
    nnoremap <buffer> <leader>cr :CocRestart<CR>

" use <C-space>for trigger completion
    inoremap <silent><expr> <C-space> coc#refresh()
" use <Tab> and <S-Tab> to navigate the completion list:
    inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" use <CR> to confirm completion
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Close the preview window when completion is done.
    " autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
"To make <CR> select the first completion item and confirm the completion when no item has been selected:
    inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

    " function! GoCoc()
    "     inoremap <buffer> <silent><expr> <Tab>
    "                 \ pumvisible() ? "\<C-n>" :
    "                 \ <SID>check_back_space() ? "\<TAB>" :
    "                 \ coc#refresh()
    "     inoremap <buffer> <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<C-h>"
    "     inoremap <buffer> <silent><expr> <C-space> coc#refresh()

    " endfunction

    " " Where to use YCM & COC
    " autocmd FileType typescript :call GoYCM()
    " autocmd FileType cpp,cxx,h,hpp,c :call GoCoc()
    " autocmd FileType sh,bash :call GoCoc()

    " default is 4000ms = 4s leads to delays and poor user experience.
        set updatetime=300

    " Don't pass messages to |ins-completion-menu|.
        set shortmess+=c

    " Prettier
    " https://github.com/neoclide/coc-prettier
    " Use :Prettier to format current buffer.
    command! -nargs=0 Prettier :CocCommand prettier.formatFile

" ULTISNIPS
" needs to jump around coc completions
" tab for jumping and ^n,^p for menu selection
    let g:UltiSnipsExpandTrigger ="<tab>"
    let g:UltiSnipsJumpForwardTrigger ="<tab>"
    let g:UltiSnipsJumpBackwardTrigger ="<s-tab>"
    let g:UltiSnipsEditSplit ="<vertical>"

" EASYALIGN
    " start in visual (e.g. vipga) & for a motion/text object (e.g. gaip)
    xmap ga <Plug>(EasyAlign)
    nmap ga <Plug>(EasyAlign)

" FZF{{{

    nnoremap <C-p> :GFiles<CR>
    nnoremap <C-t> :Tags<CR>
    nnoremap <C-g> :RG<CR>
    nnoremap <silent><C-f> :Files ~<CR>
    nnoremap <C-b> :Buffers<CR>
    nnoremap <leader>b :Buffers<CR>

    let $FZF_DEFAULT_COMMAND = 'rg --files --no-ignore-vcs --hidden -g "!{node_modules,.git,.local}"'
    let $FZF_DEFAULT_OPTS    = ' --color=dark --color=fg:15,bg:-1,hl:1,fg+:#ffffff,bg+:0,hl+:1 --color=info:0,prompt:0,pointer:12,marker:4,spinner:11,header:-1 --layout=reverse  --margin=1,4'

    " let g:fzf_layout = { 'window': 'call CreateCenteredFloatingWindow()' }
    let g:fzf_action = {
          \ 'ctrl-s': 'split',
          \ 'ctrl-v': 'vsplit',
          \ 'ctrl-t': 'tab split' }

    let g:fzf_colors = {
          \ 'fg':      ['fg', 'Normal'],
          \ 'bg':      ['bg', 'Normal'],
          \ 'hl':      ['fg', 'Keyword'],
          \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'PreProc'],
          \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
          \ 'hl+':     ['fg', 'Keyword'],
          \ 'info':    ['fg', 'Statement'],
          \ 'border':  ['fg', 'Comment'],
          \ 'prompt':  ['fg', 'Conditional'],
          \ 'pointer': ['fg', 'Statement'],
          \ 'marker':  ['fg', 'Keyword'],
          \ 'spinner': ['fg', 'Label'],
          \ 'header':  ['fg', 'Keyword'] }

    function! RipgrepFzf(query, fullscreen)
      let command_fmt     = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
      let initial_command = printf(command_fmt, shellescape(a:query))
      let reload_command  = printf(command_fmt, '{q}')
      let spec            = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
      call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
    endfunction
    command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)
  "}}}

" VIM-AUTO-SAVE
    let g:auto_save = 0
    augroup ft_tex
        au!
        au FileType tex let b:auto_save = 1
    augroup END
    let g:auto_save_silent = 1
    let g:auto_save_events = ["InsertLeave", "TextChanged"]

" VIM-PANDOC-MARKDOWN-PREVIEW (PDF + vim-auto_save)
    function Autosave_markdown_preview()
        :StartMdPreview
        let g:auto_save = 1
        let g:auto_save_silent = 1
        let g:auto_save_events = ["InsertLeave", "TextChanged"]
    endfunction
    nnoremap <leader>P :call Autosave_markdown_preview()<CR>

" MARKDOWN PREVIEW (browser)
    let g:mkdp_browser = 'brave'
    nnoremap <leader>p :MarkdownPreview<CR>

" GOYO SETTINGS
    noremap <silent> <leader>g :Goyo \| set wrap linebreak<CR>

" VIMTEX
    let g:tex_flavor='latex'
    let g:vimtex_view_method='mupdf'
    let g:vimtex_quickfix_mode=0
    let g:tex_conceal='abdmgs'
