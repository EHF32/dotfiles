#!/bin/sh

# systray battery icon
cbatticon -u 5 &
# systray volume
volumeicon &

#composition
picom --backend glx &

#fondo de pantalla
feh --bg-scale /home/ehf32/Imágenes/fondo.jpg &

