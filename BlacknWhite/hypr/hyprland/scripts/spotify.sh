#!/bin/bash
MUSIC=$(playerctl metadata --format '{{ artist }} - {{ title }}')
printf "$MUSIC"
# printf("playerctl metadata --format '{{ artist }} - {{ title }}")
