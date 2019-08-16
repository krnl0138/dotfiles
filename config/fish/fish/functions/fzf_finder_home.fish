# Defined in fish_functions @ line 6
function fzf_finder_home
	xdg-open (locate $HOME | fzf -e)
end
