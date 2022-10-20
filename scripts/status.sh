#!/bin/bash
 
playing=''
pause=''
status=` dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'PlaybackStatus' | tail -1 | cut -d "\"" -f2`

if [ "$status" = "Playing" ]; then
    echo $status $playing
else
    echo $status $pause
fi