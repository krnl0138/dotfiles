# Defined in fish_functions @ line 3
function fish_functions
	set -l host $HOME/.config/fish/functions/
    "$EDITOR" $host(fd . $HOME/.config/fish/functions/ | sed 's:.*functions\/::' | fzf -e)
end
