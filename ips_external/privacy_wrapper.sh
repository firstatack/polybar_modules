#!/bin/bash

OUTPUT=$(~/.config/bspwm/themes/Japanese\ Street\ 2/polybar/scripts/privacy.sh)
STATE=$(echo "$OUTPUT" | cut -d' ' -f1)
COUNTRY=$(echo "$OUTPUT" | cut -d' ' -f2)
IP=$(echo "$OUTPUT" | cut -d' ' -f3)

# Aquí, mejor usar los iconos que ya tienes en Polybar (Nerd Fonts o Material Design Icons):
# Por ejemplo:
ICON_NET=""   # wifi
ICON_VPN=""   # candado (lock)
ICON_TOR=""   # cebolla, puedes cambiar por alguno que uses

case $STATE in
  VPN) ICON=$ICON_VPN ;;
  TOR) ICON=$ICON_TOR ;;
  NET) ICON=$ICON_NET ;;
  *) ICON="?" ;;
esac

echo "%{F#98C379}$ICON $COUNTRY $IP%{F-}"

