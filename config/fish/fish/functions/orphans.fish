# Defined in aliases_fish @ line 142
function orphans
	pacman -Rns (pacman -Qtdq)
end
