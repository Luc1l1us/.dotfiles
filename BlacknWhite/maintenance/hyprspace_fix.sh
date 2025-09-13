#!/bin/bash

#script that would fix the "invalid dispatcher error"

cd ~/Hyprspace/
#make all

hyprpm update
hyprpm add https://github.com/KZDKM/Hyprspace
hyprpm enable Hyprspace
