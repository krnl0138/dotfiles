# Defined in aliases_fish @ line 130
function vim_stime
	vim --startuptime /tmp/startup.log +q ; "$EDITOR" /tmp/startup.log 
end
