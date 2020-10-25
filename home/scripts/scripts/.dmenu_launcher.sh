#!/bin/sh


choices="Touchpad\nSuspend\nWifi\nMonitor\nReboot"

chosen=$(echo -e "$choices" | dmenu -i)

case "$chosen" in
    Touchpad)
        swaymsg input 2:7:SynPS/2_Synaptics_TouchPad events toggle enabled disabled
        ;;
    Wifi)
        $TERMINAL -e nmtui-connect
        ;;
    Monitor)
        swaymsg output LVDS-1 toggle
        ;;
    Reboot)
        systemctl reboot
        ;;
    Suspend)
        systemctl suspend
        ;;
esac
