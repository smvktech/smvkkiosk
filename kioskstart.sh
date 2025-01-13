#!/usr/bin/env bash

#DISABLE SCREEN BLANKING
xset s noblank
xset s off
xset -dpms

# HIDE MOUSE CURSOR
unclutter -idle 0.1 -root &

# ERROR POPUPFIX # IF directory not found write actual dir instead

sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' '~/.config/chromium/Default/Preferences'
sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' '~/.config/chromium/Default/Preferences'

# START CHROMIUM

chromium-browser --kiosk --noerrdialogs --disable-infobars --enable-virtual-keyboard 'https://magasinet.varldskulturmuseerna.se' &
