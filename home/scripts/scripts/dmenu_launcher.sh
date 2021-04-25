#!/bin/sh

choices="Toggle_Window_Float\nHeadphones\nSuspend\nTouchpad\nWifi_Interface\nLVDS_Screen_Toggle\nVGA_Screen_Toggle\nAudio_Mixer\nReboot"

chosen=$(echo -e "$choices" | bemenu -p "" -l 50 -f -i -w --fn 'D2Coding 14')

case "$chosen" in
    Toggle_Window_Float)
        swaymsg floating toggle
        ;;
    Headphones)
        headphones.sh
        ;;
    Touchpad)
        swaymsg input 2:7:SynPS/2_Synaptics_TouchPad events toggle enabled disabled
        ;;
    Wifi_Interface)
        $TERMINAL -e nmtui-connect
        ;;
    LVDS_Screen_Toggle)
        swaymsg output LVDS-1 toggle
        ;;
    VGA_Screen_Toggle)
        swaymsg output VGA-1 toggle
        ;;
    Suspend)
        systemctl suspend
        ;;
    Audio_Mixer)
        $TERMINAL -e pulsemixer
        ;;
    Reboot)
        systemctl reboot
        ;;
esac
