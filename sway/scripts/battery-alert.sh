#!/bin/bash

BATTERY=$(cat /sys/class/power_supply/BAT1/capacity)
STATUS=$(cat /sys/class/power_supply/BAT1/status)
THRESHOLD=10

if [ "$STATUS" != "Charging" ] && [ "$BATTERY" -le "$THRESHOLD" ]; then
  notify-send -u critical "🔋 Low Battery" "${BATTERY}% remaining — plug in now!"
  paplay /usr/share/sounds/freedesktop/stereo/battery-low.ogg &
fi
