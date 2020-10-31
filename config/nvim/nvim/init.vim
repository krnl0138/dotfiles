let mapleader=" "
" VIM_PLUG
""""""""""
call plug#begin('~/.config/nvim/plugins')
" CODE
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets' " default snippets pack
Plug 'sheerun/vim-polyglot'
Plug 'SirVer/ultisnips'
Plug 'mattn/emmet-vim'
" STATUSLINE
Plug 'itchyny/lightline.vim'
Plug 'bling/vim-bufferline'
" NAVIGATION
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug 'majutsushi/tagbar'
" Plug 'tpope/vim-unimpaired'
" EXTENTIONS
Plug 'tpope/vim-obsession'
Plug 'aserebryakov/vim-todo-lists'
Plug 'lervag/vimtex' " compiling .tex
Plug 'plasticboy/vim-markdown' " folding, fenced syntax, etc. POLYGLOT disabled
Plug 'godlygeek/tabular' " needed for above
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' } " browser
Plug 'conornewton/vim-pandoc-markdown-preview' " don't need really
Plug 'junegunn/goyo.vim'
" FILE EDITING
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'machakann/vim-sandwich'
Plug '907th/vim-auto-save' " mb replace w :autoread ?
Plug 'junegunn/vim-easy-align'
Plug 'Yggdroot/indentLine' " indent@lines WARN: MESS `Concealcursor` OPT
" COLORSCHEMES
Plug 'joshdick/onedark.vim'
call plug#end()

" SET OPTIONS
"""""""""""""
" See :help nvim-defaults
set nohlsearch
set clipboard=unnamedplus
set cmdheight=2      " More space for messages
set colorcolumn=80
set conceallevel=2   " Determine what to conceal
set cursorline
" set cursorcolumn " Slow!
set signcolumn=no    " Delete vert space on the left side (plugin ?)
set foldcolumn=1     " visible level of folds in sidebar
set hidden
set inccommand=split " highlight & open ref window on substitute
set lazyredraw       " do not redraw screen while macro is working
set mouse=a
set nomodeline
set noshowmode
set nowrap
set number rnu
set pumblend=20      " set pum background visibility to 20%
set splitbelow splitright " Open new split to right and bottom
set title
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
" Colors
set termguicolors
set bg=dark
colorscheme onedark
" Search & find
set ignorecase
set smartcase
set path+=**
set wildignore+=**/node_modules/**
" Tabs
set smartindent
set ts=4 sts=4 sw=4 expandtab
" History
set backup
set undofile
set backupdir=~/.local/share/nvim/backupdir/backup
set directory=~/.local/share/nvim/backupdir/swp
set undodir=~/.local/share/nvim/backupdir/undo
" Auto commands
au BufEnter * setlocal fo-=c fo-=r fo-=o  "   Disables automatic commenting on newline
au BufRead * silent! loadview
au BufWrite * mkview " Save folds
au BufWritePre * %s/\s\+$//e              "  Automatically deletes all trailing whitespace on save.
au VimResized * execute "normal! \<c-w>="
au FocusGained,BufEnter * :checktime " reload buffer on outside change
" if exists('##TextYankPost')
"     au TextYankPost * silent! lua require'vim.highlight'.on_yank('Substitute', 200)
" endif

" File extensions settings
au BufRead,BufNewFile *.md setlocal tw=79
au BufNewFile,BufRead *.ejs set filetype=html
" au FileType javascript,html,css,scss set ts=2 sts=2 sw=2
" au InsertLeave *.js,*.html,*.css,*.scss,*.md silent! Prettier
au FileType javascript,html,css,scss ino <buffer> ( ()<Left>
au FileType javascript,html,css,scss ino <buffer> { {}<Left>
au FileType javascript,html,css,scss ino <buffer> {<CR> {<CR>}<Esc>O
au FileType javascript,html,css,scss ino <buffer> [ []<Left>
au FileType javascript,html,css,scss ino <buffer> < <><Left>
au FileType javascript,html,css,scss ino <buffer> ' ''<Left>
au FileType javascript,html,css,scss ino <buffer> " ""<Left>
au FileType javascript,html,css,scss ino <buffer> ` ``<Left>

" MAPPINGS
" ========
    nn ; :
    nn : ;
    nn Y y$
    nn <leader>gp :Prettier<CR>
    vn <leader>gp :Prettier<CR>
    nn <leader>a za
    nn <CR> o<Esc>
    nn <leader>pi :PlugInstall<CR>
    nn <leader>pu :PlugUpdate<CR>
    nn <leader>pc :PlugClean<CR>
    nn <leader>sv :source $MYVIMRC <bar> :doau BufRead<CR>
    inoremap <C-y> <C-k>
" %% to expand current buffer path in commandline
    cno <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
" Open window in a new tab
    nn <leader>tt :tab sp<CR>
    nn <leader>tc :tabclose<CR>
" Center jumps
    nn <expr> ' "'" . nr2char(getchar()) . "zz"
    nn <C-o> <C-o>zz
    nn <C-i> <C-i>zz
" Insert mode moves
    ino <C-d> <BS>
    ino <C-h> <Left>
    " ino <C-j> <Down>
    " ino <C-k> <Up>
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
    nn <F3> :AutoSaveToggle<CR>
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
" PLUGINS MAPPINGS
" ========
" FZF plug
    nn <silent><C-p> :GFiles<CR>
    nn <silent><C-t> :Tags<CR>
    nn <silent><C-g> :RG<CR>
    nn <silent><C-h> :Hist<CR>
    nn <silent><C-f> :Files ~<CR>
    nn <silent><leader>d :BD<CR>
    nn <silent><leader><leader> :Buffers<CR>
" VimPandocMarkdown + autosave plug
    " nn <leader>P :call Autosave_markdown_preview()<CR>
" Easyalign plug (vipga or gaip)
    xmap ga <Plug>(EasyAlign)
    nmap ga <Plug>(EasyAlign)
" NERDTree
    nn <leader>f :NERDTreeToggle<CR>
    nn <silent> <leader>v :NERDTreeFind<CR>
" Goyo
    nn <leader>go :Goyo<CR>
" PLUGINS
" =======
" EMMET
" default <C-y>,
let g:user_emmet_mode='i'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" GOYO
" let g:goyo_height " (default: 85%)
let g:goyo_width = 85 " (default: 80)
let g:goyo_linenr = 1 " (default: 0)

" INDENTLINE
let g:indentLine_setConceal = 0 " to prevent overwriting my settings

" POLYGLOT
let g:polyglot_disabled = ['md']

" LIGHTLINE
function! LightlineObsession()
    return '%{ObsessionStatus()}'
endfunction

    " Lightline + coc
au User CocStatusChange,CocDiagnosticChange call lightline#update()

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

" NERDTree
au bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeShowHidden=1
let g:NERDTreeAutoDeleteBuffer = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeDirArrows = 1

" VIM-MARKDOWN
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_folding_style_pythonic = 1
let g:vim_markdown_folding_level = 3
let g:vim_markdown_override_foldtext = 0
let g:vim_markdown_fenced_languages = ['js=javascript']
let g:vim_markdown_new_list_item_indent = 2

" ULTISNIPS
let g:UltiSnipsExpandTrigger = '<C-e>'
let g:UltiSnipsJumpForwardTrigger = '<C-j>'
let g:UltiSnipsJumpBackwardTrigger = '<C-k>'
let g:UltiSnipsRemoveSelectModeMappings = 0
" let g:UltiSnipsSnippetDirectories = [vimrc#path('UltiSnips')]
nnoremap <leader>es :UltiSnipsEdit!<cr>

" YCM
    " function! GoYCM()
    "     nn <buffer> <silent> <leader>gd :YcmCompleter GoTo<CR>
    "     nn <buffer> <silent> <leader>gr :YcmCompleter GoToReferences<CR>
    "     nn <buffer> <silent> <leader>rr :YcmCompleter RefactorRename<space>
    " endfunction

" COC
" See YT primegean
" :CocInstall coc-snippets, for general snippets support
" :CocInstall coc-ultisnips, for support the snippets from ultisnips

    set updatetime=300 " default is 4000ms = 4s leads to delays and poor user experience.
    set shortmess+=c " Don't pass messages to ins-completion-menu.
    set signcolumn=yes " wo would shift the text when diagnostics appear/become resolved.

    " tab for trigger completion w chars ahead & navigate, check ':verbose imap <tab>'
    ino <silent><expr> <TAB>
          \ pumvisible() ? "\<C-n>" :
          \ <SID>check_back_space() ? "\<TAB>" :
          \ coc#refresh()
    ino <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

    function! s:check_back_space() abort
      let col = col('.') - 1
      return !col || getline('.')[col - 1]  =~# '\s'
    endfunction

    ino <silent><expr> <c-space> coc#refresh()
    " Use <c-space> to trigger completion. DONT KNOW WHAT IS IT

    " <cr> to confirm completion, `<C-g>u` to break undo chain @ current position.
    " Coc only does snippet and additional edit on confirm. Check `:verbose imap <CR>`.
    if exists('*complete_info')
      ino <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
    else
      ino <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
    endif

    " imap <C-l> <Plug>(coc-snippets-expand) " Use <C-l> for trigger snippet expand.

    " Use <C-j> for select text for visual placeholder of snippet.
    vmap <C-j> <Plug>(coc-snippets-select)

    let g:coc_snippet_next = '<tab>'
    let g:coc_snippet_prev = '<s-tab>'

    " Use `[g` and `]g` to navigate diagnostics
    nmap <silent> [g <Plug>(coc-diagnostic-prev)
    nmap <silent> ]g <Plug>(coc-diagnostic-next)

    " GoTo code navigation.
    nmap <silent> gd <Plug>(coc-definition)
    nmap <silent> gy <Plug>(coc-type-definition)
    nmap <silent> gi <Plug>(coc-implementation)
    nmap <silent> gr <Plug>(coc-references)

    " Highlight the symbol and its refs when holding the cursor. TODO make brighter
    au CursorHold * silent call CocActionAsync('highlight')

    " Prettier, https://github.com/neoclide/coc-prettier, :Prettier for buffer
    com! -nargs=0 Prettier :CocCommand prettier.formatFile
    " `:Format` to format current buffer, as Prettier.
    com! -nargs=0 Format :call CocAction('format')
    " `:Fold` to fold current buffer.
    com! -nargs=? Fold :call CocAction('fold', <f-args>)
    " `:OR` to organize imports of the current buffer.
    com! -nargs=0 OR :call CocAction('runCommand', 'editor.action.organizeImport')

    " Formatting selected code, as Prettier.
    xmap <leader>p  <Plug>(coc-format-selected)
    nmap <leader>p  <Plug>(coc-format-selected)

    " Symbol renaming, rename all occurrences intelligently.
    nmap <leader>rn <Plug>(coc-rename)

    " Applying codeAction to the selected region.
    " Example `<leader>aap` for current paragraph
    xmap <leader>z  <Plug>(coc-codeaction-selected)
    nmap <leader>z  <Plug>(coc-codeaction-selected)
    " Remap keys for applying codeAction to the current line.
    nmap <leader>zc  <Plug>(coc-codeaction)
    " Apply AutoFix to problem on the current line.
    nmap <leader>qf  <Plug>(coc-fix-current)

    " Use CTRL-S to intelligently select code area. Press again to enlarge.
    " Requires 'textDocument/selectionRange' support of LS, ex: coc-tsserver
    nmap <silent> <C-s> <Plug>(coc-range-select)
    xmap <silent> <C-s> <Plug>(coc-range-select)

" FZF{{{
    let $FZF_DEFAULT_COMMAND = 'rg --files --no-ignore-vcs --hidden -g "!{node_modules,.git,.local}"'
    let $FZF_DEFAULT_OPTS    = ' --color=dark --color=fg:15,bg:-1,hl:1,fg+:#ffffff,bg+:0,hl+:1 --color=info:0,prompt:0,pointer:12,marker:4,spinner:11,header:-1 --layout=reverse  --margin=1,4'

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

    function! s:list_buffers()
      redir => list
      silent ls
      redir END
      return split(list, "\n")
    endfunction

    function! s:delete_buffers(lines)
      execute 'bwipeout' join(map(a:lines, {_, line -> split(line)[0]}))
    endfunction

    command! BD call fzf#run(fzf#wrap({
      \ 'source': s:list_buffers(),
      \ 'sink*': { lines -> s:delete_buffers(lines) },
      \ 'options': '--multi --reverse --bind ctrl-a:select-all+accept'
    \ }))

  "}}}

" VIMTEX
    let g:tex_flavor='latex'
    let g:vimtex_view_method='mupdf'
    let g:vimtex_quickfix_mode=0
    let g:tex_conceal='abdmgs'

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

" MARKDOWN PREVIEW (browser)
    let g:mkdp_browser = 'brave'
