# Defined in fish_functions @ line 3
function fzf_finder_all
	xdg-open (locate * | fzf -e)
end
