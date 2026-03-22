#!/bin/bash

pkill -f spotify-notify.sh --ignore-ancestors
sleep 1

while true; do
  until playerctl --player=spotify status &>/dev/null; do
    sleep 5
  done

  last=""
  while IFS='|' read -r title artist; do
    [[ -z "$title" ]] && continue
    current="$title|$artist"
    [[ "$current" == "$last" ]] && continue
    last="$current"
    notify-send -i "spotify" "$title" "$artist"
  done < <(playerctl --player=spotify --follow metadata --format '{{title}}|{{artist}}')

  sleep 2
done
