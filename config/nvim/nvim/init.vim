let mapleader=" "
" VIM_PLUG
""""""""""
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
Plug 'godlygeek/tabular' " needed for above
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
Plug 'Yggdroot/indentLine' " lines @ indent
" COLORSCHEMES
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
Plug 'drewtempelmeyer/palenight.vim'
call plug#end()
" SET OPTIONS
"""""""""""""
" see :help nvim-defaults
    autocmd BufEnter * setlocal fo-=c fo-=r fo-=o  "   Disables automatic commenting on newline
    autocmd BufRead * silent! loadview
    autocmd BufWrite * mkview " Save folds
    autocmd BufWritePre * %s/\s\+$//e              "  Automatically deletes all trailing whitespace on save.
    autocmd VimResized * execute "normal! \<c-w>="
    autocmd FocusGained,BufEnter * :checktime " reload buffer on outside change

    set clipboard=unnamedplus
    set cmdheight=2           " More space for messages
    set colorcolumn=80
    set conceallevel=2        " Determine what to conceal
    set cursorline
    set foldcolumn=2          " visible level of folds in sidebar
    set hidden
    set inccommand=split
    set lazyredraw            " do not redraw screen while macro is working
    set mouse=a
    set nomodeline
    set noshowmode
    set nowrap
    set number rnu
    set pumblend=20           " set pum background visibility to 20 percent
    set splitbelow splitright " Open new split panes to right and bottom
    set title
    set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
" colors
    set termguicolors
    set bg=dark
    colorscheme onedark
" search & find
    set ignorecase
    set smartcase
    set path+=**
    set wildignore+=**/node_modules/**
" tabs
    set smartindent
    set ts=4 sts=4 sw=4 expandtab
" history
    set backup
    set undofile
    set backupdir=~/.local/share/nvim/backupdir/backup
    set directory=~/.local/share/nvim/backupdir/swp
    set undodir=~/.local/share/nvim/backupdir/undo
" language settings
    autocmd FileType javascript,html,css,scss set ts=2 sts=2 sw=2
    autocmd FileType javascript,html,css,scss ino <buffer> ( ()<Left>
    autocmd FileType javascript,html,css,scss ino <buffer> { {}<Left>
    autocmd FileType javascript,html,css,scss ino <buffer> {<CR> {<CR>}<Esc>O
    autocmd FileType javascript,html,css,scss ino <buffer> [ []<Left>
    autocmd FileType javascript,html,css,scss ino <buffer> < <><Left>
    autocmd FileType javascript,html,css,scss ino <buffer> ' ''<Left>
    autocmd FileType javascript,html,css,scss ino <buffer> " ""<Left>
    autocmd FileType javascript,html,css,scss ino <buffer> ` ``<Left>
" MAPPINGS
" ========
    nn ; :
    nn : ;
    nn Y y$
    nn <leader>a za
    nn <CR> o<Esc>
    nn <leader>pi :PlugInstall<CR>
    nn <leader>pu :PlugUpdate<CR>
    nn <leader>pc :PlugClean<CR>
    nn <leader>sv :source $MYVIMRC <bar> :doautocmd BufRead<CR>
" Center jumps
    nn <expr> ' "'" . nr2char(getchar()) . "zz"
    nn <C-o> <C-o>zz
    nn <C-i> <C-i>zz
" Insert mode moves
    ino <C-d> <BS>
    ino <C-h> <Left>
    ino <C-j> <Down>
    ino <C-k> <Up>
    ino <C-l> <Right>
" Move visual range
    vn <C-j> :m '>+1<CR>gv=gv
    vn <C-k> :m '<-2<CR>gv=gv
" Substitute ease
    nn S :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>
    vn S :s///gc<Left><Left><Left><Left>
" Terminal
    tno <Esc> <C-\><C-n>
    nn <C-s> :sp <bar> terminal<CR>i
" Better formatting
    vn Q gq
    nn Q gqap
" Better indentation
    vn < <gv
    vn > >gv
    nn > >>
    nn < <<
" F-keys bindings
    nn <F2> :set relativenumber!<CR>
    nn <F4> :set invhls<CR>
    nn <F5> :UndotreeToggle<CR>
    nn <F6> :setlocal spell! spelllang=ru,en_gb<CR>
    set pastetoggle=<F7> " to stop intending while pasting
    nn <F8> :TagbarToggle<CR>
    nn <F9> :!clear && shellcheck %<CR>
    nn <F12> :exe '!$BROWSER %'<CR><CR>
" Move around windows with Shift-HJKL
    nn <silent><S-h> <C-w><left>
    nn <silent><S-j> <C-w><down>
    nn <silent><S-k> <C-w><up>
    nn <silent><S-l> <C-w><right>
    tno <silent><S-h> <C-\><C-n><C-w>h
    tno <silent><S-j> <C-\><C-n><C-w>j
    tno <silent><S-k> <C-\><C-n><C-w>k
    tno <silent><S-l> <C-\><C-n><C-w>l
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
nn <leader>f :NERDTreeToggle<CR>
nn <silent> <Leader>v :NERDTreeFind<CR>
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
        nn <buffer> <silent> <leader>gd :YcmCompleter GoTo<CR>
        nn <buffer> <silent> <leader>gr :YcmCompleter GoToReferences<CR>
        nn <buffer> <silent> <leader>rr :YcmCompleter RefactorRename<space>
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

" use <C-space>for trigger completion
    ino <silent><expr> <C-space> coc#refresh()
" use <Tab> and <S-Tab> to navigate the completion list:
    ino <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    ino <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" use <CR> to confirm completion
" ino <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Close the preview window when completion is done.
    " autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
"To make <CR> select the first completion item and confirm the completion when no item has been selected:
    ino <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

    " function! GoCoc()
    "     ino <buffer> <silent><expr> <Tab>
    "                 \ pumvisible() ? "\<C-n>" :
    "                 \ <SID>check_back_space() ? "\<TAB>" :
    "                 \ coc#refresh()
    "     ino <buffer> <expr><S-Tab> pumvisible() ? "\<C-p>" : "\<C-h>"
    "     ino <buffer> <silent><expr> <C-space> coc#refresh()

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
    let g:UltiSnipsExpandTrigger       = "<tab>"
    let g:UltiSnipsJumpForwardTrigger  = "<tab>"
    let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
    let g:UltiSnipsEditSplit           = "<vertical>"

" EASYALIGN
    " vipga or gaip
    xmap ga <Plug>(EasyAlign)
    nmap ga <Plug>(EasyAlign)

" FZF{{{

    nn <C-p> :GFiles<CR>
    nn <C-t> :Tags<CR>
    nn <C-g> :RG<CR>
    nn <silent><C-f> :Files ~<CR>
    nn <leader><leader> :Buffers<CR>

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
    nn <leader>P :call Autosave_markdown_preview()<CR>

" MARKDOWN PREVIEW (browser)
    let g:mkdp_browser = 'brave'

" VIMTEX
    let g:tex_flavor='latex'
    let g:vimtex_view_method='mupdf'
    let g:vimtex_quickfix_mode=0
    let g:tex_conceal='abdmgs'
