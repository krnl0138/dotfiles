#!/bin/sh

choices="Anki
Bib
Brave
Chromium
Docear
Firefox
Gimp
Htop
Notion
Pulsemixer
Telegram
Torrent
Vifm
Vmpk
Zotero"

chosen=$(echo -e "$choices" | bemenu -f -p '' -P 'start >' -i -w -l 50 --fn 'D2Coding 14')

case "$chosen" in
    Anki)
        anki
        ;;
    Bib)
        $TERMINAL -e $EDITOR $BIB
        ;;
    Brave)
        brave
        ;;
    Chromium)
        chromium
        ;;
    Docear)
        docear
        ;;
    Firefox)
        firefox-nightly
        ;;
    Gimp)
        gimp
        ;;
    Htop)
        $TERMINAL -e htop
        ;;
    Pulsemixer)
        $TERMINAL -e pulsemixer
        ;;
    Notion)
        notion-app
        ;;
    Torrent)
        $TERMINAL -e tremc
        ;;
    Telegram)
        telegram-desktop
        ;;
    Vifm)
        $TERMINAL -e vifm
        ;;
    Vmpk)
        qsynth & vmpk
        ;;
    Zotero)
        zotero
        ;;
esac
