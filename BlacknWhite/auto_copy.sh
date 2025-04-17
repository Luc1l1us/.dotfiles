#!/bin/bash

# Set script location
script_dir=$(realpath $(dirname $0))

# copy config from default paths
cp -r ~/.config/kitty/kitty.conf $script_dir/
cp -r ~/.config/hypr/ $script_dir/
cp -r --force ~/.zshrc $script_dir/zsh
