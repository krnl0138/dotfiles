" Begin .vimrc

syntax on
filetype indent plugin on
let mapleader=" "

" PLUGINGS "
""""""""""""
" Make sure you use single quotes

call plug#begin('~/.config/nvim/plugins')
" Plug 'dense-analysis/ale'
" Plug 'ycm-core/YouCompleteMe'
" Plug 'ervandew/supertab'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'vifm/vifm.vim'
Plug 'bling/vim-bufferline'
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug 'majutsushi/tagbar'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug '907th/vim-auto-save'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'junegunn/vim-easy-align'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }
Plug 'conornewton/vim-pandoc-markdown-preview',
Plug 'itchyny/lightline.vim'
Plug 'morhetz/gruvbox'
Plug 'caksoylar/vim-mysticaltutor'
Plug 'tomasiser/vim-code-dark'

"Plug 'tpope/vim-markdown'
"Plug 'dylanaraps/wal.vim'
"Plug 'machakann/vim-sandwich'
"Plug 'mileszs/ack.vim'
"Plug 'whiteinge/diffconflicts'
"Plug 'RRethy/vim-hexokinase'
call plug#end()

" SET OPTIONS "
"""""""""""""""
" look at :help nvim-defaults

    set cmdheight=2 " More space for messages
    set clipboard=unnamedplus
    set cursorline
    set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
    set modeline
    set mouse=a
    set noshowmode
    set title   " change the terminal's title
" set pum background visibility to 20 percent
    set pumblend=20
" Open new split panes to right and bottom, which feels more natural
    set splitbelow
    set splitright

" COLORS
set termguicolors
colorscheme mysticaltutor
set bg=dark
hi Normal ctermbg=none
hi Terminal ctermbg=none
hi Terminal guibg=none
hi Normal guibg=none

" SEARCH & FIND
    set ignorecase
    set smartcase
    set path+=**
    set wildignore+=**/node_modules/**
    set hidden " Hide not close buffers e.g. open files wo/ saving changes

" TABS & SPLITS
    " set copyindent  " copy the previous indentation on autoindenting
    set tabstop=4
    set softtabstop=4
    set shiftwidth=4
    set shiftround
    set expandtab
" switch through tabs with ctrl
    nnoremap <C-h> gT
    nnoremap <C-l> gt
    " nnoremap <s-tab> gt
    nnoremap <c-t> :tabnew<cr>
" move around splits with shift-hjkl
    noremap <silent><s-k> <c-w><up>
    noremap <silent><s-j> <c-w><down>
    noremap <silent><s-l> <c-w><right>
    noremap <silent><s-h> <c-w><left>
    tnoremap <silent><s-h> <C-\><C-n><C-w>h
    tnoremap <silent><s-j> <C-\><C-n><C-w>j
    tnoremap <silent><s-k> <C-\><C-n><C-w>k
    tnoremap <silent><s-l> <C-\><C-n><C-w>l
  " easily escape terminal
    tnoremap <leader><esc> <C-\><C-n><esc><cr>
    tnoremap <C-o> <C-\><C-n><esc><cr>
" resize splits
    nnoremap <silent> <Leader>= :vertical resize +5<CR>
    nnoremap <silent> <Leader>- :vertical resize -5<CR>

" HISTORY
    set backup
    set undofile
    set backupdir=~/.local/share/nvim/backupdir/backup
    set directory=~/.local/share/nvim/backupdir/swp
    set undodir=~/.local/share/nvim/backupdir/undo

" FORMATTING STRINGS AND NUMBERS
    set number relativenumber
    set nowrap
    set textwidth=0 wrapmargin=0
    set colorcolumn=80
    highlight colorcolumn ctermbg=0 guibg=#141414

" PARARAGRAPHS FORMATTING
    vmap Q gq
    nmap Q gqap

" MISC
autocmd BufWritePre * %s/\s\+$//e " Automatically deletes all trailing whitespace on save.
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " Disables automatic commenting on newline:
" set display=truncate " Show @@@ in the last line if it is truncated.

" MAPPINGS "
""""""""""""

" Y like D
    map Y y$
" VIM-Terminal
    nnoremap <c-s> :terminal<CR>i
" Enter for newline
    nmap <S-Enter> O<Esc>
    nmap <CR> o<Esc>
" VIMRC SOURCE
    nnoremap <leader>ev :vsp $MYVIMRC<CR>
    nnoremap <leader>sv :source $MYVIMRC <bar> :doautocmd BufRead<CR>
" MOVE VISUAL RANGE AROUND
    vnoremap <c-j> :m '>+1<CR>gv=gv
    vnoremap <c-k> :m '<-2<CR>gv=gv
    vnoremap <c-h> <gv
    vnoremap <c-l> >gv
" N TO SEARCH FORWARD AND N BACKWARD
    nnoremap <expr> n  'Nn'[v:searchforward]
    xnoremap <expr> n  'Nn'[v:searchforward]
    onoremap <expr> n  'Nn'[v:searchforward]
    nnoremap <expr> N  'nN'[v:searchforward]
    xnoremap <expr> N  'nN'[v:searchforward]
    onoremap <expr> N  'nN'[v:searchforward]
" VimPlug
    nnoremap <leader>pi :PlugInstall<CR>
    nnoremap <leader>pu :PlugUpdate<CR>
    nnoremap <leader>pc :PlugClean<CR>
" F-KEY BINDINGS
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
" EXIT FROM EDIT MODE
    " nnoremap qq :wq<cr>
    nnoremap qq :qa!<cr>
    inoremap jk <esc>
    inoremap jj <esc>
    inoremap 11 <esc>
    vnoremap 11 <esc>
    inoremap kj <esc>
    inoremap ii <ESC>
    nnoremap ; :
    nnoremap : ;
" BETTER INDENTATION
    vnoremap < <gv
    vnoremap > >gv
    nnoremap > >>
    nnoremap < <<
" EASIER NAVIGATION
    " noremap K {
    " noremap J }
    " noremap H g^
    " noremap L g_
" BIB
    autocmd FileType bib inoremap ,a @article{<Enter>author<Space>=<Space>{<++>},<Enter>year<Space>=<Space>{<++>},<Enter>title<Space>=<Space>{<++>},<Enter>journal<Space>=<Space>{<++>},<Enter>volume<Space>=<Space>{<++>},<Enter>pages<Space>=<Space>{<++>},<Enter>}<Enter><++><Esc>8kA,<Esc>i
    autocmd FileType bib inoremap ,b @book{<Enter>author<Space>=<Space>{<++>},<Enter>year<Space>=<Space>{<++>},<Enter>title<Space>=<Space>{<++>},<Enter>publisher<Space>=<Space>{<++>},<Enter>}<Enter><++><Esc>6kA,<Esc>i
    autocmd FileType bib inoremap ,c @incollection{<Enter>author<Space>=<Space>{<++>},<Enter>title<Space>=<Space>{<++>},<Enter>booktitle<Space>=<Space>{<++>},<Enter>editor<Space>=<Space>{<++>},<Enter>year<Space>=<Space>{<++>},<Enter>publisher<Space>=<Space>{<++>},<Enter>}<Enter><++><Esc>8kA,<Esc>i
" TERMINAL
    tnoremap <Esc> <C-\><C-n>

" FOLDS
" Toggle open/close on spacebar
    nnoremap , zA
    vnoremap , zf
    autocmd BufWrite * mkview " Save folds
    autocmd BufRead * silent! loadview

" PLUGINS "
"""""""""""

" YCM functions
    function! GoYCM()
        nnoremap <buffer> <silent> <leader>gd :YcmCompleter GoTo<CR>
        nnoremap <buffer> <silent> <leader>gr :YcmCompleter GoToReferences<CR>
        nnoremap <buffer> <silent> <leader>rr :YcmCompleter RefactorRename<space>
    endfunction

" " COC settings
"     function! s:check_back_space() abort
"         let col = col('.') - 1
"         return !col || getline('.')[col - 1]  =~# '\s'
"     endfunction

"     function! GoCoc()
"         inoremap <buffer> <silent><expr> <TAB>
"                     \ pumvisible() ? "\<C-n>" :
"                     \ <SID>check_back_space() ? "\<TAB>" :
"                     \ coc#refresh()

"         inoremap <buffer> <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"         inoremap <buffer> <silent><expr> <C-space> coc#refresh()

"         " GoTo code navigation.
"         nmap <buffer> <leader>gd <Plug>(coc-definition)
"         nmap <buffer> <leader>gy <Plug>(coc-type-definition)
"         nmap <buffer> <leader>gi <Plug>(coc-implementation)
"         nmap <buffer> <leader>gr <Plug>(coc-references)
"         nnoremap <buffer> <leader>cr :CocRestart
"     endfunction
"     " Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
"     " delays and poor user experience.
"         set updatetime=300

"     " Don't pass messages to |ins-completion-menu|.
"         set shortmess+=c

"     "  Lightline integration
"     "   let g:lightline = {
"     " 	\ 'colorscheme': 'wombat',
"     " 	\ 'active': {
"     " 	\   'left': [ [ 'mode', 'paste' ],
"     " 	\             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
"     " 	\ },
"     " 	\ 'component_function': {
"     " 	\   'cocstatus': 'coc#status'
"     " 	\ },
"     " 	\ }

"     " Use auocmd to force lightline update.
"     " autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

"     " Where to use YCM & COC
"     " autocmd FileType typescript :call GoYCM()
"     " autocmd FileType cpp,cxx,h,hpp,c :call GoCoc()
"     " autocmd FileType sh,bash :call GoCoc()

" EASYALIGN
    " Start interactive EasyAlign in visual mode (e.g. vipga)
    xmap ga <Plug>(EasyAlign)
    " Start interactive EasyAlign for a motion/text object (e.g. gaip)
    nmap ga <Plug>(EasyAlign)

" " NETRW
" " https://github.com/BrodieRobertson/dotfiles/blob/master/config/nvim/init.vim
" let g:netrw_banner = 0
" let g:netrw_liststyle = 3
" let g:netrw_browse_split = 4
" let g:netrw_winsize = 20

" function! OpenToRight()
"   :normal v
"   let g:path=expand('%:p')
"   :q!
"   execute 'belowright vnew' g:path
"   :normal <C-l>
" endfunction

" function! OpenBelow()
"   :normal v
"   let g:path=expand('%:p')
"   :q!
"   execute 'belowright new' g:path
"   :normal <C-l>
" endfunction


" noremap <S-f> :call ToggleNetrw()<CR>
" function! NetrwMappings()
"     " Hack fix to make ctrl-l work properly
"     noremap <buffer> <C-l> <C-w>l
"     noremap <S-f> :call ToggleNetrw()<CR>
"     noremap <buffer> V :call OpenToRight()<cr>
"     noremap <buffer> H :call OpenBelow()<cr>
" endfunction

" augroup netrw_mappings
    " autocmd!
    " autocmd filetype netrw call NetrwMappings()
" augroup END

" " Allow for netrw to be toggled
" function! ToggleNetrw()
"     if g:NetrwIsOpen
"         let i = bufnr("$")
"         while (i >= 1)
"             if (getbufvar(i, "&filetype") == "netrw")
"                 silent exe "bwipeout " . i
"             endif
"             let i-=1
"         endwhile
"         let g:NetrwIsOpen=0
"     else
"         let g:NetrwIsOpen=1
"         silent Lexplore
"     endif
" endfunction

" " Close Netrw if it's the only buffer open
" autocmd WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&filetype") == "netrw" || &buftype == 'quickfix' |q|endif

" " Make netrw act like a project Draw
" " augroup ProjectDrawer
"    autocmd!
"    autocmd VimEnter * :call ToggleNetrw()
" " augroup END

" let g:NetrwIsOpen=0

" " VIM FZF
"     command! Fd call fzf#run(fzf#wrap({'source': 'fd -t f -H . /'}))
"     command! Fd call fzf#run(fzf#wrap({'source': 'locate /'}))
"     noremap <leader>f :Fd<CR>

" FZF{{{
    nnoremap <c-t> :Tags<cr>
    nnoremap <c-g> :RG<cr>
    nnoremap <silent><c-f> :Files<CR>
    nnoremap <c-b> :Buffers<cr>

    let $FZF_DEFAULT_COMMAND = 'rg --files --no-ignore-vcs --hidden -g "!{node_modules,.git}"'
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

" VIM-AUTO-SAVE & VIM-PANDOC-MARKDOWN-PREVIEW
    function Autosave_markdown_preview()
        :StartMdPreview
        let g:auto_save = 1
        let g:auto_save_silent = 1
        let g:auto_save_events = ["InsertLeave", "TextChanged"]
    endfunction
    nnoremap <leader>P :call Autosave_markdown_preview()<CR>

" MARKDOWN PREVIEW
    let g:mkdp_browser = 'brave'
    nnoremap <leader>p :MarkdownPreview<CR>

" GOYO SETTINGS
	noremap <silent> <leader>g :Goyo \| set wrap linebreak<CR>

" VIMTEX
    let g:tex_flavor='latex'
    let g:vimtex_view_method='mupdf'
    let g:vimtex_quickfix_mode=0
    set conceallevel=2
    let g:tex_conceal='abdmgs'

" ULTISNIPS
    " let g:UltiSnipsExpandTrigger = '<tab>'
    " let g:UltiSnipsJumpForwardTrigger = '<tab>'
    " let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
    " let g:UltiSnipsEditSplit = 'vertical'
