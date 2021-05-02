function! LightlineObsession()
    return '%{ObsessionStatus()}'
endfunction

let g:lightline = {
\ 'colorscheme': 'OceanicNext',
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

au User CocStatusChange,CocDiagnosticChange call lightline#update()
