#!/bin/bash

pacman -Qdtq | pacman -Rns -

printf "\nSleeping for 10s\n"

sleep 10s

pacman -Qqd | pacman -Rsu --print -

printf "\nSleeping for 10s\n"

sleep 10s

paccache -r
