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
