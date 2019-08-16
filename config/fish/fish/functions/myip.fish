# Defined in aliases_fish @ line 160
function myip
	ip route ; curl ipinfo.io 
end
