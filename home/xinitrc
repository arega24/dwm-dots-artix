#!/bin/sh

pipewire &
pipewire-pulse &

picom &
wal -n -R & 
~/.fehbg & 
xrdb .Xresources
setxkbmap pt &

xrandr --output DP-3 --primary --mode 1920x1080 --rate 75 --rotate normal
redshift -P -O 4200 &

urxvtd -q -o -f &

syncthing --no-browser &

# reloads colors after dwm stars
(sleep 0.3 && dwmc reloadxrdb) &

exec slstatus &
exec dbus-run-session dwm

#exec dwm

# spectrwm as default
#session=${1:-dwm}

# slect wich wm to use
#case $session in
#	dwm			) exec dwm;;
#	# no known session
#	*			) exec $1;;
#esac


