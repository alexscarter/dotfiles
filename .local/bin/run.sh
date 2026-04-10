#!/bin/sh

xrdb merge ~/.config/x11/.Xresources 
setxkbmap -layout "eu" &
doas tzupdate &
xset r rate 200 50 &
pipewire &
wpctl set-volume @DEFAULT_AUDIO_SINK@ 0.5 &
mpd --no-daemon ~/.config/mpd/mpd.conf &
picom -b &
feh --bg-fill --no-fehbg --randomize ~/.local/share/backgrounds/* &

dash ~/.local/bin/bar.sh &
while type dwm >/dev/null; do dwm && continue || break; done
