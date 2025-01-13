#!/bin/bash

# Set the inactivity period in seconds (e.g., 300 seconds = 5 minutes)
INACTIVITY_LIMIT=60

while true; do
    # Get idle time in seconds
    IDLE_TIME=$(xprintidle)
    IDLE_TIME=$((IDLE_TIME / 1000))

    # If idle time exceeds the limit, restart Chromium
    if [ "$IDLE_TIME" -ge "$INACTIVITY_LIMIT" ]; then
        pkill chromium-browser
    # IF directory not found write actual dir instead

    sed -i 's/"exited_cleanly":false/"exited_cleanly":true/' 'home/Magasinet/.config/chromium/Default/Preferences'
    sed -i 's/"exit_type":"Crashed"/"exit_type":"Normal"/' 'home/Magasinet/.config/chromium/Default/Preferences'

    # START CHROMIUM

    chromium-browser --kiosk --noerrdialogs --disable-infobars --enable-virtual-keyboard 'https://magasinet.varldskulturmuseerna.se' &

    # Check every 10 seconds
    sleep 880
done
