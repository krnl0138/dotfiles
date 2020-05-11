" Begin .vimrc

syntax on
filetype indent plugin on
let mapleader=" "

" VIM_PLUG
""""""""""
" Make sure you use single quotes

call plug#begin('~/.config/nvim/plugins')
" CODE COMPLETION
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
" STATUSLINE
Plug 'itchyny/lightline.vim'
" NAVIGATION
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-vinegar'
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug 'majutsushi/tagbar'
Plug 'bling/vim-bufferline'
" EXTENTIONS
Plug 'aserebryakov/vim-todo-lists'
Plug 'lervag/vimtex' " compiling .tex
Plug 'plasticboy/vim-markdown' " folding, fenced syntax, etc.
Plug 'godlygeek/tabular' "needed for above
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' } " browser
Plug 'conornewton/vim-pandoc-markdown-preview' " no russian
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
" OTHER

" LATER
" https://github.com/nkzawa/js-inspector.vim
" https://github.com/dstein64/vim-win
" https://github.com/dstein64/vim-startuptime
"Plug 'dense-analysis/ale'
"Plug 'ycm-core/YouCompleteMe'
"Plug 'janko/vim-test'

" REMOVED
" Plug 'tpope/vim-surround'
call plug#end()

noremap ; :
noremap : ;

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
set splitbelow            " Open new split panes to right and bottom, which feels more natural
" set splitright
set lazyredraw            " do not redraw screen while macro is working
set number relativenumber
set nowrap
set colorcolumn=80

" COC jump do definition
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gr <Plug>(coc-references)

nnoremap <C-p> :GFiles<CR>

" center after goto bookmark
" May want to put in <nowait>
nnoremap <expr> ' "'" . nr2char(getchar()) . "zz"
nnoremap <expr> ` "`" . nr2char(getchar()) . "zz"
" Delete in insert mode
inoremap <C-d> <BS>
" Center screen on next/previous selection.
nnoremap n nzz
nnoremap N Nzz
" Last and next jump should center too.
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz
" Move in INSERT mode
imap <C-h> <esc>ha
imap <C-j> <esc>ja
imap <C-k> <esc>ka
imap <C-l> <esc>la

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

" set scrolloff=999        " center everything
highlight colorcolumn ctermbg=0 guibg=#141414
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz

" settings for vim-markdown
let g:vim_markdown_folding_level = 3
let g:vim_markdown_override_foldtext = 1
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_fenced_languages = ['js=javascript']
let g:vim_markdown_new_list_item_indent = 2

" COLORS
set termguicolors
colorscheme onedark
set bg=dark
" for transparent bg
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

    " Go to tab by number
    noremap <leader>1 1gt
    noremap <leader>2 2gt
    noremap <leader>3 3gt
    noremap <leader>4 4gt
    noremap <leader>5 5gt
    noremap <leader>6 6gt
    noremap <leader>7 7gt
    noremap <leader>8 8gt
    noremap <leader>9 9gt
    noremap <leader>0 :tablast<cr>
    " Go to last active tab
    au TabLeave * let g:lasttab = tabpagenr()
    nnoremap <silent> <c-l> :exe "tabn ".g:lasttab<cr>
    vnoremap <silent> <c-l> :exe "tabn ".g:lasttab<cr>

    set autoindent
    set copyindent  " copy the previous indentation on autoindenting
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set shiftround
    set expandtab
" switch through tabs with ctrl
    noremap <C-h> gT
    noremap <C-l> gt
    nnoremap <C-t> :tabnew<cr>
" move around splits with shift-hjkl
    noremap <silent><s-k> <c-w><up>
    noremap <silent><s-j> <c-w><down>
    noremap <silent><s-l> <c-w><right>
    noremap <silent><s-h> <c-w><left>
    tnoremap <silent><s-h> <c-\><c-n><c-w>h
    tnoremap <silent><s-j> <c-\><c-n><c-w>j
    tnoremap <silent><s-k> <c-\><c-n><c-w>k
    tnoremap <silent><s-l> <c-\><c-n><c-w>l
  " easily escape terminal
    tnoremap <leader><esc> <C-\><C-n><esc><cr>
    tnoremap <C-o> <C-\><C-n><esc><cr>
" resize splits
    nnoremap <silent> <Leader>- :vertical resize -5<CR>
    nnoremap <silent> <Leader>= :vertical resize +5<CR>

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

" Substitute easy
    nnoremap S :%s/\<<C-r><C-w>\>//gc<Left><Left><Left>
    vnoremap s :s///gc<Left><Left><Left><Left>
" Y like D
    map Y y$
" TERMINAL
    tnoremap <Esc> <C-\><C-n>
    nnoremap <c-s> :terminal<CR>i
" PARARAGRAPHS FORMATTING
    vmap Q gq
    nmap Q gqap
" Enter for newline
    nmap <s-CR> O<Esc>
    nmap <CR> o<Esc>
" VIMRC SOURCE
    nnoremap <leader>ev :vsp $MYVIMRC<CR>
    nnoremap <leader>sv :source $MYVIMRC <bar> :doautocmd BufRead<CR>
" MOVE VISUAL RANGE AROUND
    vnoremap <c-j> :m '>+1<CR>gv=gv
    vnoremap <c-k> :m '<-2<CR>gv=gv
" N TO SEARCH FORWARD AND N BACKWARD
    " nnoremap <expr> n  'Nn'[v:searchforward]
    " xnoremap <expr> n  'Nn'[v:searchforward]
    " onoremap <expr> n  'Nn'[v:searchforward]
    " nnoremap <expr> N  'nN'[v:searchforward]
    " xnoremap <expr> N  'nN'[v:searchforward]
    " onoremap <expr> N  'nN'[v:searchforward]
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

" EXIT FROM EDIT MODE
    inoremap ;; <esc>
    vnoremap ;; <esc>
    inoremap 11 <esc>
    vnoremap 11 <esc>
" BETTER INDENTATION
    vnoremap < <gv
    vnoremap > >gv
    nnoremap > >>
    nnoremap < <<

" BIB
    autocmd FileType bib inoremap ,b @book{<Enter>author<Space>=<Space>{<++>},<Enter>year<Space>=<Space>{<++>},<Enter>title<Space>=<Space>{<++>},<Enter>publisher<Space>=<Space>{<++>},<Enter>}<Enter><++><Esc>6kA,<Esc>i
    autocmd FileType bib inoremap ,c @incollection{<Enter>author<Space>=<Space>{<++>},<Enter>title<Space>=<Space>{<++>},<Enter>booktitle<Space>=<Space>{<++>},<Enter>editor<Space>=<Space>{<++>},<Enter>year<Space>=<Space>{<++>},<Enter>publisher<Space>=<Space>{<++>},<Enter>}<Enter><++><Esc>8kA,<Esc>i
    autocmd FileType bib inoremap ,a @article{<Enter>author<Space>=<Space>{<++>},<Enter>year<Space>=<Space>{<++>},<Enter>title<Space>=<Space>{<++>},<Enter>journal<Space>=<Space>{<++>},<Enter>volume<Space>=<Space>{<++>},<Enter>pages<Space>=<Space>{<++>},<Enter>}<Enter><++><Esc>8kA,<Esc>i

" FOLDS
" Toggle open/close on spacebar
    nnoremap <leader>, za
    vnoremap <leader>, zf
    autocmd BufWrite * mkview " Save folds
    autocmd BufRead * silent! loadview

" PLUGINS "
"""""""""""

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

" use <c-space>for trigger completion
    inoremap <silent><expr> <c-space> coc#refresh()
" use <Tab> and <S-Tab> to navigate the completion list:
    inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" use <cr> to confirm completion
" inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Close the preview window when completion is done.
    " autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif
"To make <cr> select the first completion item and confirm the completion when no item has been selected:
    inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

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

    " Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
    " delays and poor user experience.
        set updatetime=300

    " Don't pass messages to |ins-completion-menu|.
        set shortmess+=c

    " Lightline integration
      let g:lightline = {
    	\ 'colorscheme': 'wombat',
    	\ 'active': {
    	\   'left': [ [ 'mode', 'paste' ],
    	\             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
    	\ },
    	\ 'component_function': {
    	\   'cocstatus': 'coc#status'
    	\ },
    	\ }

    " Use auocmd to force lightline update.
    autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

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

" NETRW
" https://github.com/BrodieRobertson/dotfiles/blob/master/config/nvim/init.vim
" https://gist.github.com/danidiaz/37a69305e2ed3319bfff9631175c5d0f
let g:netrw_banner = 0
let g:netrw_browse_split = 2
let g:netrw_winsize = 25
let g:netrw_liststyle = 3

  nnoremap <silent> <leader>f :call ToggleNetrw()<CR>
  " Allow for netrw to be toggled
  let g:NetrwIsOpen=0
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

  function! NetrwMappings()
      nnoremap <silent> <leader>f :call ToggleNetrw()<CR>
      nnoremap <buffer> V :call OpenToRight()<cr>
      nnoremap <buffer> H :call OpenBelow()<cr>
  endfunction

  augroup netrw_mappings
      autocmd filetype netrw call NetrwMappings()
  augroup END

 " Check before opening buffer on any file
  function! NetrwOnBufferOpen()
    if exists('b:noNetrw')
        return
    endif
    call ToggleNetrw()
  endfun

  function! OpenToRight()
    :normal v
    let g:path=expand('%:p')
    :q!
    execute 'belowright vnew' g:path
  endfunction

  function! OpenBelow()
    :normal v
    let g:path=expand('%:p')
    :q!
    execute 'belowright new' g:path
  endfunction

  " Close Netrw if it's the only buffer open
  autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw" || &buftype == 'quickfix' |q|endif

" FZF{{{
    nnoremap <c-t> :Tags<cr>
    nnoremap <c-g> :RG<cr>
    nnoremap <silent><c-f> :Files ~<CR>
    nnoremap <c-b> :Buffers<cr>

    let $FZF_DEFAULT_COMMAND = 'rg --files --no-ignore-vcs --hidden -g "!{node_modules,.git,backupdir}"'
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
