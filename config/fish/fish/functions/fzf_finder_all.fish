# Defined in /tmp/fish.I7gf8s/fzf_finder_all.fish @ line 2
function fzf_finder_all
	xdg-open (locate / | fzf -e)
end
