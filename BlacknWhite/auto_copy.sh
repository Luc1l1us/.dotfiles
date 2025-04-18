#!/bin/bash

# Set script location
script_dir=$(realpath $(dirname $0))

# copy config from default paths
cp -r ~/.config/kitty/kitty.conf $script_dir/
cp -r ~/.config/hypr/ $script_dir/
cp -r --force ~/.zshrc $script_dir/zsh

# copy config from firefox
cp -r ~/.mozilla/firefox/0zqgk6n9.dizzy/chrome/* $script_dir/firefox
echo 'Files copied successfully!'
