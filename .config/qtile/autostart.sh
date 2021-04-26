#!/bin/sh

# systray battery icon
cbatticon -u 5 &
# systray volume
volumeicon &

#composition
#picom --backend glx &
picom --backend glx --config picom.conf &

#fondo de pantalla
#feh --bg-scale $HOME/.config/qtile/fondo.jpg &

#Polkit
/usr/lib/xfce-polkit/xfce-polkit &

gnirehtet autorun &

/home/ehf32/.xinitrc &
