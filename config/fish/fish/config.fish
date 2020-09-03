# CONFIGURATION FILE FOR FISH SHELL
#
## BINDS
#
# bind \cr fzf_history_search
bind \cq fzf_kill_process
bind \ce edit_command_buffer
# bind \ce fzf_cd_category
bind \ct fzf_finder_home
# bind \ce fzf_finder_all
#

## EXPORTS
### Do i need -U flag??
# set SPACEFISH_PROMPT_ORDER time user dir host git package node docker ruby golang php rust haskell julia aws conda pyenv kubecontext exec_time line_sep battery jobs exit_code char
set SPACEFISH_PROMPT_ORDER time user dir host git package exec_time line_sep battery jobs exit_code char
set -x XDG_DOWNLOAD_DIR "$HOME/downloads"
set -x XDG_MUSIC_DIR "$HOME/personal/music"
set -x XDG_PICTURES_DIR "$HOME/personal/pictures"
set -x XDG_SCREENSHOTS_DIR "$HOME/personal/pictures/screenshots"
set -x XDG_VIDEOS_DIR "$HOME/personal/videos"
set -x XDG_CONFIG_HOME "$HOME/.config"
set -x XDG_DESKTOP_DIR "$HOME/dump/desktop"
set -x XDG_TEMPLATES_DIR "$HOME/dump/templates"
set -x XDG_PUBLICSHARE_DIR "$HOME/dump/public"
set -x XDG_DOCUMENTS_DIR "$HOME/dump/documents"
set -x XDG_CURRENT_DESKTOP "Unity"
set -x XDG_DATA_HOME "$HOME/.local/share"
set -x PATH /usr/local/bin $PATH
set -x PATH "$HOME"/scripts $PATH
set -x BIB $HOME/uni.bib
set -x EDITOR nvim
set -x TERM alacritty
set -x TERMINAL alacritty
set -x READER zathura
set -x BROWSER brave
set -x PLAYER mpv
set -x VISUAL nvim
set -x PAGER less
set -x LESSHISTFILE -
set -x MYVIMRC "$XDG_CONFIG_HOME/nvim/init.vim"

# set -x DISPLAY :0
set -x NNN_SCRIPT $HOME/.config/nnn/scripts
set -x NNN_SHOW_HIDDEN 1
set -x NNN_BMS 'd:~/Downloads;p:~/pics;D:~/Dropbox/;s:~/Dropbox/screenshots'
set -x FZF_DEFAULT_OPTS "--reverse --height=40% --color=dark --cycle -m --bind=ctrl-alt-j:down,ctrl-alt-k:up --inline-info --preview='highlight --force -O xterm256 -s xoria256 {}' --bind="ctrl-space:toggle-preview""

set -x LESS -R
set -x LESS_TERMCAP_mb (printf '\e[01;31m')       # begin blinking
set -x LESS_TERMCAP_md (printf '\e[01;38;5;74m')  # begin bold
set -x LESS_TERMCAP_me (printf '\e[0m')           # end mode
set -x LESS_TERMCAP_se (printf '\e[0m')           # end standout-mode
set -x LESS_TERMCAP_so (printf '\e[01;33m')    # begin standout-mode - info box
set -x LESS_TERMCAP_ue (printf '\e[0m')           # end underline
set -x LESS_TERMCAP_us (printf '\e[04;38;5;146m') # begin underline

## ABBREVIATIONS
abbr zotero zotero --profile .config/zotero
abbr ydcmd ydcmd --config="$HOME/.config/ydcmd.conf"
abbr touchpad swaymsg input 2:7:SynPS/2_Synaptics_TouchPad events toggle enabled disabled
abbr notes nvim $HOME/notes.md
abbr monolith monolith -i -j
# abbr cd pushd
abbr vim nvim
abbr firefox-nightly env MOZ_WEBRENDER=1 firefox-nightly

abbr v f -e nvim # quick opening files with vim
abbr m f -e mplayer # quick opening files with mplayer
abbr o a -e xdg-open # quick opening files with xdg-open

abbr n nnn
abbr e exit
abbr q exit
abbr c clear

abbr rsync-copy rsync -avz --progress -h
abbr rsync-move rsync -avz --progress -h --remove-source-files
abbr rsync-update rsync -avzu --progress -h
abbr rsync-synchronize rsync -avzu --delete --progress -h

abbr ytdl youtube-dl
abbr ytmp3 youtube-dl --extract-audio --audio-format mp3
abbr ytaudio youtube-dl --extract-audio
abbr ytallbest youtube-dl --audio-format "best" --video-format "best"

abbr crow crow -s en -t ru
abbr torrent transmission-daemon
abbr wifi nmtui-connect
abbr tree tree -aCuhL 1
abbr paclog pacolog
abbr mutt neomutt
abbr starwars telnet towel.blinkenlights.nl
abbr mkdir mkdir -pv
abbr wifi-menu sudo wifi-menu
abbr df df -h
abbr weather-saratov curl wttr.in/saratov
abbr weather-odintsovo curl wttr.in/odintsovo
abbr weather-moscow curl wttr.in/odintsovo
abbr suspend systemctl suspend
abbr zzz systemctl suspend
abbr off systemctl shutdown -r now
abbr ping ping -c 3
abbr boottime systemd-analyze
abbr mapscii telnet mapscii.me
abbr whoneeds pactree -r
abbr wn pactree -r
abbr pactree pactree -c
abbr .. cd ..
abbr ... cd ../..
abbr .... cd ../../..
abbr connection connection.sh
abbr connect connection.sh
abbr reconnection connection.sh
abbr reconnect connection.sh
abbr rg rg -S
# abbr cp rsync --archive --human-readable --progress --verbose --whole-file
abbr cp cp -i
abbr mv mv -i
abbr rm trash-put
abbr diff vimdiff
abbr dmesg dmesg -HL
# abbr neofetch neofetch --disable theme icons --package_managers off --uptime_shorthand on --w3m /home/gppk/pics/top.jpg --loop --crop_mode fit
abbr ka killall

abbr ys yay -S --sudoloop
abbr yss yay -Ss
abbr ysi yay -Si
abbr yq yay -Q
abbr yqi yay -Qi
abbr yrns yay -Rns
abbr yrsn yay -Rns
#https://www.reddit.com/r/archlinux/comments/a030v7/how_do_you_manage_git_aur_packages/
abbr ysyu yay -Syu --sudoloop # --devel
abbr ysuy yay -Syu --sudoloop # --devel

abbr ls ls --color=auto
abbr lsla ls -la --color=auto
abbr grep grep -n --color=always

abbr todo jrnl @todolist -n 1
abbr todolist jrnl @todolist -n 1
abbr todoedit jrnl @todolist -n 1 --edit
