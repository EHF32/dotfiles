#!/bin/sh

# systray battery icon
cbatticon -u 5 &
# systray volume
volumeicon &

#composition
#picom --backend glx &
picom --blur-method dual_kawase --blur-strength 7 --backend glx --corner-radius 15


#fondo de pantalla
#feh --bg-scale $HOME/.config/qtile/fondo.jpg &

#Polkit
/usr/lib/xfce-polkit/xfce-polkit &

gnirehtet autorun &

/home/ehf32/.xinitrc &
