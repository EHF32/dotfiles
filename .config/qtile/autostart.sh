#!/bin/sh

# systray battery icon
cbatticon -u 5 &
# systray volume
volumeicon &

#composition
#picom --backend glx &
picom &

#fondo de pantalla
feh --bg-scale $HOME/.config/qtile/fondo.jpg &
