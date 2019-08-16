# Defined in aliases_fish @ line 139
function grub_update
	sudo grub-mkconfig -o /boot/grub/grub.cfg 
end
