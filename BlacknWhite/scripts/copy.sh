#!/bin/bash

# Set script location
script_dir=$(realpath $(dirname $0))

# copy config from default paths
cp -r ~/.config/kitty/kitty.conf $script_dir/BlacknWhite/
cp -r ~/.config/hypr/ $script_dir/BlacknWhite/
cp -r ~/.zshrc ~/.oh-my-zsh $script_dir/BlacknWhite/zsh
