function prog -d "set up layout for coding"
    set tmpfile "/tmp/prog.txt"
    if [[ ! -f $tmpfile ]]; then
        touch $tmpfile
    fi
    echo "Marijn\ Haverbeke\ -\ Eloquent\ Javascript_\ A\ Modern\ Introduction\ to\ Programming-No\ Starch\ Press\ \(2018\).pdf" > $tmpfile
    echo "Eric\ Elliott\ -\ Composing\ Software\ \(2019,\ Leanpub\).pdf" >> $tmpfile
    cat $tmpfile | xargs okular
    nvim -S ~/.config/nvim/sessions/prog.vim
    rm $tmpfile
endfunction
