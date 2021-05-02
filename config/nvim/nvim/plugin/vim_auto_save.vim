let g:auto_save = 0
augroup ft_tex
    au!
    au FileType tex let b:auto_save = 1
augroup END
let g:auto_save_silent = 1
let g:auto_save_events = ["InsertLeave", "TextChanged"]
