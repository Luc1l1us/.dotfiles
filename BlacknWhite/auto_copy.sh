#!/bin/bash

# Set script location
script_dir=$(realpath $(dirname $0))

# copy config from default paths
cp -r ~/.config/kitty/kitty.conf $script_dir/
cp -r ~/.config/hypr/ $script_dir/
cp -r --force ~/.zshrc $script_dir/zsh
cp -r ~/.config/rofi/* $script_dir/rofi
cp -r ~/.config/fastfetch/* $script_dir/fastfetch

# copy config from firefox
# will change this brute force method later on (TBD)
cp -r ~/.mozilla/firefox/0zqgk6n9.dizzy/chrome/* $script_dir/firefox

# copy SDDM theme
cp -r /usr/share/sddm/themes/sddm-blacknwhite-theme/ $script_dir/sddm

echo 'Files copied successfully!'
