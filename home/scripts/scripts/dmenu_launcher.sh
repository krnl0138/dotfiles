#!/bin/sh

c1="1) Window_Toggle_Float"
c2="2) Window_Toggle_Sticky"
c3="3) Headphones"
c4="4) Suspend"
c5="5) Touchpad"
c6="6) Wifi_Interface"
c7="7) LVDS_Screen_Toggle"
c8="8) VGA_Screen_Toggle"
c9="9) Audio_Mixer"
c10="10) Reboot"

choices="$c1\n$c2\n$c3\n$c4\n$c5\n$c6\n$c7\n$c8\n$c9\n$c10"

chosen=$(echo -e "$choices" | bemenu -p "" -l 50 -f -i -w --fn 'D2Coding 14')

case "$chosen" in
    "$c1")
        swaymsg floating toggle
        ;;
    $c2)
        i3-msg sticky toggle
        ;;
    $c3)
        headphones.sh
        ;;
    $c4)
        swaymsg input 2:7:SynPS/2_Synaptics_TouchPad events toggle enabled disabled
        ;;
    $c5)
        $TERMINAL -e nmtui-connect
        ;;
    $c6)
        swaymsg output LVDS-1 toggle
        ;;
    $c7)
        swaymsg output VGA-1 toggle
        ;;
    $c8)
        systemctl suspend
        ;;
    $c9)
        $TERMINAL -e pulsemixer
        ;;
    $c10)
        systemctl reboot
        ;;
esac
