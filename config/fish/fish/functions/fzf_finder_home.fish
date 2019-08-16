# Defined in /tmp/fish.SIa3nX/fzf_finder_home.fish @ line 2
function fzf_finder_home
	xdg-open (locate $HOME | fzf -em)
end
