#!/bin/sh

setxkbmap -option caps:escape &
# systray battery icon
cbatticon -u 5 &
# systray volume
volumeicon &

#composition
picom --config picom.conf &
#picom --backend glx --vsync &
#picom --blur-method dual_kawase --blur-strength 7 --backend glx --corner-radius 15 --config picom.conf &

#fondo de pantalla
#feh --bg-scale $HOME/.config/qtile/fondo.jpg &

#Polkit
/usr/lib/xfce-polkit/xfce-polkit &

#gnirehtet autorun &

/home/ehf32/.xinitrc &


qtile cmd-obj -o widget cloudflight -f update -a C &
