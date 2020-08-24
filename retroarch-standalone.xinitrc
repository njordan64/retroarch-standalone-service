#!/bin/bash

# Disable all energy save features, and leave the monitor always on
xset s off         # don't activate screensaver
xset -dpms         # disable DPMS (Energy Star) features.
xset s noblank     # don't blank the video device

# Hide mouse cursor
unclutter -display :0.0 -noevents -root &

# Clean old debug logs
rm /home/retroarch/debug.log 2>&1 >&/dev/null

# Autostart Retroarch
/usr/bin/retroarch --appendconfig=/etc/retroarch-standalone.cfg -v 2>&1 >&/home/retroarch/debug.log
if [ "$?" -eq "0" ]; then
  sudo shutdown -h now
fi

