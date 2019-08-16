# Defined in aliases_fish @ line 136
function update_grub
	sudo grub-mkconfig -o /boot/grub/grub.cfg 
end
