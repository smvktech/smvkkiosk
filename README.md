Install process:
Sudo apt install cromium-browser
-||- unclutter
sudo apt-get install xprintidle

Autostart file:
/etc/xdg/lxsession/LXDE-pi/autostart
@'path to file'


Alt+f4 to exit chromium kiosk mode!

Multiple sessions error:
rm -rf ~/.config/chromium/Singleton*

xset s noblank
xset s off
xset -dpms
![bild](https://github.com/user-attachments/assets/69c28712-10b8-40dd-97c7-829802ef2b56)


Idle_reset.sh : remember to chmod +x and add to autostart
