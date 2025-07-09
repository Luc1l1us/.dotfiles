#!/bin/bash

ICON_PLAY="\uf04b"
ICON_PAUSE="\udb80\udfe4"

STATUS=$(playerctl status 2>/dev/null)

if [[ "$STATUS" == "Playing" ]]; then
  ICON="$ICON_PLAY"
elif [[ "$STATUS" == "Paused" ]]; then
  ICON="$ICON_PAUSE"
else
  ICON=" "
fi

echo "{\"text\": \"$ICON\", \"tooltip\": \"Spotify: $STATUS\"}"
