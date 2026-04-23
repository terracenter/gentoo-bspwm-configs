#!/bin/bash
CAP=$(cat /sys/class/power_supply/BAT0/capacity 2>/dev/null || echo "??")
STAT=$(cat /sys/class/power_supply/BAT0/status 2>/dev/null || echo "Unknown")

case "$STAT" in
    "Charging")  echo "[+] $CAP%" ;;
    "Full")      echo "[F] $CAP%" ;;
    *)           echo "[-] $CAP%" ;;
esac
