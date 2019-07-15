#[ -f "$HOME/.config/shortcutrc" ] && source "$HOME/.config/shortcutrc" 
. ~/scripts/aliases
. ~/scripts/funcs
. ~/scripts/exports
# . ~/Quotefetch/quotefetch.sh

# add theme from pywal
(cat ~/.cache/wal/sequences &)

# enable highlighting
if [[ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
  . /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

#Игнорируем все дубликаты, строки начинающиеся с пробелов и пустые строки
setopt hist_ignore_space
setopt hist_ignore_all_dups
#История становится общей между всеми сессиями / терминалами.
setopt share_history

sudo_ (){
    BUFFER="sudo $BUFFER"
    CURSOR=$#BUFFER
}
zle -N sudo_
bindkey "^!" sudo_

HISTFILE="${HOME}/.zsh_history"
HISTSIZE='10000'
SAVEHIST="${HISTSIZE}"
# infinite history
#HISTSIZE= HISTFILESIZE=
autoload -Uz compinit promptinit
compinit
promptinit

# This will set the default prompt to the walters theme
prompt fade blue

# tells the shell that it should not add anything to $path if it's there already.
typeset -U path
#path=(~/.local/bin /other/things/in/path $path[@])

# completions support 
zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES
setopt AUTO_MENU           # Show completion menu on a succesive tab press.
setopt AUTO_LIST           # Automatically list choices on ambiguous completion.
setopt AUTO_PARAM_SLASH    # If completed parameter is a directory, add a trailing slash.
unsetopt MENU_COMPLETE     # Do not autoselect the first completion entry.
setopt PATH_DIRS           # Perform path search even on command names with slashes.
setopt auto_cd

# compinit will not automatically find new executables in the $PATH. 
# to have new executables included in completion
zstyle ':completion:*' rehash true

# coloring output of completion
zstyle ':completion:*:default' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' squeeze-slashes true
# Use caching to make completion for commands such as dpkg and apt usable.
#zstyle ':completion::complete:*' use-cache on
#zstyle ':completion::complete:*' cache-path "$HOME/.zcache"
zstyle ':completion:*' accept-exact '*(N)'
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path "$HOME/.zcache"
# enable help
autoload -Uz run-help
alias help=run-help
autoload -Uz run-help-git

# zsh globbing
setopt extendedglob
# correction
setopt correctall

# Treat these characters as part of a word.
#WORDCHARS='*?_-.[]~&;!#$%^(){}<>'
#
# search history by existing line
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "$key[Up]"   ]] && bindkey -- "$key[Up]"   up-line-or-history
[[ -n "$key[Down]" ]] && bindkey -- "$key[Down]" down-line-or-history

# use the vi navigation keys in menu completion
bindkey -N menuselect
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# vim-like cmd
bindkey -v
typeset -g -A key
#bindkey '^?' backward-delete-char
bindkey '^[[5~' up-line-or-history
#bindkey '^[[3~' delete-char
bindkey '^[[6~' down-line-or-history
bindkey '^[[A' up-line-or-search
#bindkey '^[[D' backward-char
bindkey '^[[B' down-line-or-search
#bindkey '^[[C' forward-char 
#bindkey "^[[H" beginning-of-line
#bindkey "^[[F" end-of-line

# Defaults for FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
fzf-locate() { xdg-open "$(locate "*" | fzf -e)" ;}

# Enable FASD
eval "$(fasd --init zsh-hook zsh-wcomp auto)"
alias v='f -e vim'
alias m='f -e mpv' #vlc
alias j='fasd_cd -d'
alias z='f -e zathura'
alias o='a -e xdg-open'

# rsync commands
alias rsync-copy="rsync -avz --progress -h"
alias rsync-move="rsync -avz --progress -h --remove-source-files"
alias rsync-update="rsync -avzu --progress -h"
alias rsync-synchronize="rsync -avzu --delete --progress -h"
