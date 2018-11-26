" Begin .vimrc

" http://nvie.com/posts/how-i-boosted-my-vim/

" set sessionoptions-=options
set runtimepath=~/.vim,/usr/share/vim/vimfiles,/usr/share/vim/vim80,/usr/share/vim/vimfiles/after
set nocompatible

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

" let g:zipPlugin_ext = '*.zip,*.jar,*.xpi,*.ja,*.war,*.ear,*.celzip,*.oxt,*.kmz,*.wsz,*.xap,*.docx,*.docm,*.dotx,*.dotm,*.potx,*.potm,*.ppsx,*.ppsm,*.pptx,*.pptm,*.ppam,*.sldx,*.thmx,*.crtx,*.vdw,*.glox,*.gcsx,*.gqsx'
set modeline 
set incsearch " showw next match while enter string search
set laststatus=2
" Hide not close buffers e.g. open files wo/ saving changes
set hidden

" SpellCheckers
map <F6> :setlocal spell! spelllang=en_us<CR>
map <F7> :setlocal spell! spelllang=ru_ru<CR>

" Edit/reload .vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" Copy/paste options
set pastetoggle=<F2>
set clipboard=unnamedplus

set showcmd		" display incomplete commands
set wildmenu		" display completion matches in a status line

" Show @@@ in the last line if it is truncated.
set display=truncate

" Color for folding
hi Folded cterm=bold ctermfg=DarkBlue ctermbg=none 
hi FoldColumn cterm=bold ctermfg=DarkBlue ctermbg=none

" Save your foldings
au BufWinLeave * mkview 
au BufWinEnter * silent loadview

" Disable saving lots of copies by file checkers
set nobackup
set nowritebackup
set noswapfile

" Color scheme options
" set termguicolors
syntax on
"let g:rehash256 = 1
"set t_Co=256

colorscheme solarized
"let g:solarized_termcolors=256
let g:solarized_termtrans=1
set background=dark
" g:solarized_termcolors=   16      |   256
" g:solarized_termtrans =   0       |   1
" g:solarized_degrade   =   0       |   1
" g:solarized_bold      =   1       |   0
" g:solarized_underline =   1       |   0
" g:solarized_italic    =   1       |   0
" g:solarized_contrast  =   "normal"|   "high" or "low"
" g:solarized_visibility=   "normal"|   "high" or "low"

" colorscheme hybrid
" let g:hybrid_custom_term_colors = 1
" let g:hybrid_reduced_contrast = 1
"
"colorscheme jellybeans
" colorscheme wombat256mod

"colorscheme molokai
"let g:molokai_term_italic = 1
"let g:monokai_gui_italic = 1
"
" Better deleting by backspace and using mouse
set mouse=a
set bs=2
" set backspace=indent,eol,start " allow backspacing over everything in insert mode

" Make search case insensitive
set hlsearch
set incsearch
set ignorecase
set smartcase

" Formatting strings and numbers
" set number
" noremap <F3> :set relativenumber<CR>
" inoremap <F3> <C-O>:set relativenumber!<CR>
set relativenumber    " slows up vim, dont sl now
set number
nmap <F5> :set relativenumber!<CR>
set tw=79
" au BufRead,BufNewFile *.md setlocal textwidth=80
"set wrap   " divides words when over 80th
set nowrap
set fo+=w " to divide strings after words
" set ruler " displays strings and symbols on the bottom bar
" Highlight for characters after 80th line
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/
" let &colorcolumn=join(range(81,999),",")
" let &colorcolumn="80,".join(range(120,999),",")
"set cc=80 " cc for colorcolumn
" highlight ColorColumn ctermbg=blue 

set path+=**

" Useful features
set history=700
set undolevels=700
set title                " change the terminal's title
set novisualbell           " don't beep
set noerrorbells         " don't beep
nnoremap ; :
cmap w!! w !sudo tee % >/dev/null
let mapleader=","

" Autoindent
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting

" Formatting tab 
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop

" allow to set specific settings for formats
"autocmd filetype python set expandtab

" better indentation
vnoremap < <gv
vnoremap > >gv

" pararagraphs formatting
vmap Q gq
nmap Q gqap

" Toggle highlight in search mode by F4
noremap <F4> :set hlsearch! hlsearch?<CR>

" Move around splits with <c-hjkl>
noremap <S-k> <C-w><Up>
noremap <S-j> <C-w><Down>
noremap <S-l> <C-w><Right>
noremap <S-h> <C-w><Left>

" Pathogen plugin to manage plugins
" For plugin install clone git into .vim/bundle/plugin-name
execute pathogen#infect()
" call pathogen#helptags()

" Settings for TagBar
nmap <F9> :TagbarToggle<CR>
"let g:tagbar_ctags_bin
" let g:tagbar_type_vimwiki = {
"           \   'ctagstype':'vimwiki'
"           \ , 'kinds':['h:header']
"           \ , 'sro':'&&&'
"           \ , 'kind2scope':{'h':'header'}
"           \ , 'sort':0
"           \ , 'ctagsbin':'/home/gppk/vimwiki/vwtags.py'
"           \ , 'ctagsargs': 'markdown'
"           \ }
" Add support for markdown files in tagbar.
" let g:tabbar_type_mkd 
" let g:tagbar_type_markdown = {
"     \ 'ctagstype': 'mkd',
"     \ 'ctagsbin' : '/home/gppk/markdown2ctags.py',
"     \ 'ctagsargs' : '-f - --sort=yes',
"     \ 'kinds' : [
"         \ 's:sections',
"         \ 'i:images'
"     \ ],
"     \ 'sro' : '|',
"     \ 'kind2scope' : {
"         \ 's' : 'section',
"     \ },
"     \ 'sort': 0,
" \ }
 " let g:tagbar_type_markdown = {
 "     \ 'ctagstype' : 'markdown',
 "     \ 'kinds' : [
 "         \ 'h:Heading_L1',
 "         \ 'i:Heading_L2',
 "         \ 'k:Heading_L3'
 "     \ ]
 " \ }

" Settings for live-latex
let g:livepreview_previewer = 'zathura'

" Settings for Vimwiki
" vimwiki - Personal Wiki for Vim
" https://github.com/vimwiki/vimwiki
" let g:vimwiki_ext2syntax = {'.wiki': 'markdown', '.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
" let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
"let g:vimwiki_ext2syntax = {}
"let g:vimwiki_global_ext = 0
" change in .vim/bundle/vimwiki/plugin/vimwiki.vim
" let s:vimwiki_defaults.ext = '.md'
" make vimwiki use markdown syntax
"let g:vimwiki_list = [{'path': '~/vimwiki/',
"                     \ 'syntax': 'markdown', 'ext': '.md'}]
"augroup filetypedetect
"  au! BufRead,BufNewFile */vimwiki/*        set filetype=vimwiki
"augroup END
"
" Settings for Vim-instant-md
" vim-instant-markdown - Instant Markdown previews from Vim
" https://github.com/suan/vim-instant-markdown
" let g:instant_markdown_allow_unsafe_content = 1
" let g:instant_markdown_allow_external_content = 1
let g:instant_markdown_autostart = 0	" disable autostart
map <leader>md :InstantMarkdownPreview<CR>

" Settings for vim-airline
" git clone https://github.com/vim-airline/vim-airline ~/.vim/bundle/vim-airline
"set laststatus=2
"let g:airline_left_sep = "\uE0B0"
"let g:airline_right_sep = "\uE0B2"
"let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

" set font terminal font or set gui vim font to a Nerd Font (https://github.com/ryanoasis/nerd-fonts):

" testing rounded separators (extra-powerline-symbols):
"let g:airline_left_sep = "\uE0B4"
"let g:airline_right_sep = "\uE0B6"

" set the CN (column number) symbol:
"let g:airline_section_z = airline#section#create(["\uE0A1" . '%{line(".")}' . "\uE0A3" . '%{col(".")}'])

" Settings for Goyo
map <F3> :Goyo<CR>

" Settings for Limelight

" autocmd! User GoyoEnter Limelight
" autocmd! User GoyoLeave Limelight!

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
" let g:limelight_conceal_guifg = 'DarkGray'
" let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.3

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 0

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
" let g:limelight_bop = '^\s'
" let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
"let g:limelight_priority = -1

" Settings for NERDtree
"autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeWinPos = "right"
" close vim window if only NTree left
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Settings for ctrlp
" git clone https://github.com/kien/ctrlp.vim.git ~/.vim/bundle
" let g:ctrlp_max_height = 30

" Settings for python-mode
" git clone https://github.com/klen/python-mode ~/.vim/bundle
" map <Leader>g :call RopeGotoDefinition()<CR>
" let g:pymode =1 
" let ropevim_enable_shortcuts = 1
" let g:pymode_rope_goto_def_newwin = "win"
" let g:pymode_rope_extended_complete = 0
" let g:pymode_breakpoint = 0
" let g:pymode_syntax = 1
" let g:pymode_syntax_builtin_objs = 0
" let g:pymode_syntax_buitin_funcs = 0
" map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

" Settings for neomake [neovim]
" autocmd! BufReadPost,BufWritePost * Neomake
" let g:neomake_serialize = 1
" let g:neomake_serialize_abort_on_error = 1

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

"_ End .vimrc
