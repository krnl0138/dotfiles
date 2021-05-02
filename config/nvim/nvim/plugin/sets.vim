" See :help nvim-defaults
set laststatus=2
set nohlsearch
set clipboard=unnamedplus
set cmdheight=2      " More space for messages
set colorcolumn=80
set conceallevel=2   " Determine what to conceal
set cursorline
set scrolloff=8
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
set updatetime=50 " default is 4000ms = 4s leads to delays and poor user experience.
set shortmess+=c " Don't pass messages to ins-completion-menu.
set signcolumn=yes " wo would shift the text when diagnostics appear/become resolved.

set termguicolors
colorscheme OceanicNext

set ignorecase
set smartcase
set path+=**
set wildignore+=**/node_modules/**

set smartindent
set ts=4 sts=4 sw=4 expandtab

set backup
set undofile
set backupdir=~/.local/share/nvim/backupdir/backup
set directory=~/.local/share/nvim/backupdir/swp
set undodir=~/.local/share/nvim/backupdir/undo
