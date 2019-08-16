# Defined in fish_functions @ line 3
function fzf_kill_process
	ps -ef | sed 1d | fzf -m | awk '{print $2}' | xargs kill -9 $1
end
