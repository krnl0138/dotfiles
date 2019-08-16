# Defined in fish_functions @ line 3
function fzf_cd_category
	cd (fd -t d | fzf)
end
