#!/bin/bash

WEATHER=$(curl -s 'wttr.in/Philippines?format=3')
printf "$WEATHER"
# curl wttr.in/{your_city} if location from /etc/timezone is incorrect
