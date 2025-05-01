#!/bin/bash

playerctl --follow metadata --format '{{ artist }} - {{ title }}' | while read -r line; do
  safe_line=$(echo "$line" | sed 's/&/\&amp;/g')
  echo "$safe_line"
done

# MUSIC=$(playerctl metadata --format '{{ artist }} - {{ title }}' | sed 's/&/\&amp;/g')
# printf "$MUSIC"
# # printf("playerctl metadata --format '{{ artist }} - {{ title }}")
