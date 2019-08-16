# Defined in aliases_fish @ line 127
function nvim_stime
	nvim --startuptime /tmp/startup.log +q ; "$EDITOR" /tmp/startup.log 
end
