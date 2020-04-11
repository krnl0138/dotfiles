function stuff
    nvim (fd -t f . ~/stuff -e md | fzf -d / --with-nth=-1)
end
