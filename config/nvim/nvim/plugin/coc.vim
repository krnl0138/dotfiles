" COC
" See YT primegean
" :CocInstall coc-snippets, for general snippets support
" :CocInstall coc-ultisnips, for support the snippets from ultisnips

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
" xmap <leader>p  <Plug>(coc-format-selected)
" nmap <leader>p  <Plug>(coc-format-selected)

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
