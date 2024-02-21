#!/bin/bash

### install selected packages ###
read -n1 -rep 'Would you like to isntall the package (Y/N)' INST
if [[ $INST == "Y" || $INST == "y" ]]; then
    yay -S --noconfirm hyprland kitty waybar \
    neovim firefox rofi wlogout brightnessctl \

fi 