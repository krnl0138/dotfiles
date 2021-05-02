function! LightlineObsession()
    return '%{ObsessionStatus()}'
endfunction

function! LightlineFugitive()
    if exists('*FugitiveHead')
        return FugitiveHead()
    endif
    return ''
endfunction

" au User CocStatusChange,CocDiagnosticChange call lightline#update()

let g:lightline = {
\ 'colorscheme': 'jellybeans',
\ 'active': {
\   'left': [ [ 'mode', 'paste' ],
\             [ 'fugitive', 'readonly', 'filename', 'modified' ],
\             [ 'obsession' ]
\   ],
\ },
\ 'component_function': {
\   'cocstatus': 'coc#status',
\   'fugitive': 'LightlineFugitive',
\ },
\ 'component_expand': {
\   'obsession': 'LightlineObsession'
\ },
\ }
