#!/bin/bash

# Obtener IP externa
EXTERNAL_IP=$(dig +short myip.opendns.com @resolver1.opendns.com 2>/dev/null)
if [[ -z "$EXTERNAL_IP" ]]; then
    echo "N/A"
    exit 0
fi

# Obtener país
COUNTRY_CODE=$(curl -s https://ipinfo.io/${EXTERNAL_IP}/country)

# Detectar VPN (tun/tap)
if ip a | grep -qE 'tun[0-9]|tap[0-9]'; then
    STATUS="VPN"
elif curl -s https://check.torproject.org/api/ip | grep -q '"IsTor":true'; then
    STATUS="TOR"
else
    STATUS="NET"
fi

# Salida simple: ESTADO PAÍS IP
echo "$STATUS $COUNTRY_CODE $EXTERNAL_IP"
