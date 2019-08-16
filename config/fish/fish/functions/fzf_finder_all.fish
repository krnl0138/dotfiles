# Defined in /home/gppk/.config/fish/functions/fzf_finder_all.fish @ line 2
function fzf_finder_all
	xdg-open (locate * | fzf -e)
end
