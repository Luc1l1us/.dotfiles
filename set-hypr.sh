#!/bin/bash

# Set script location
script_dir=$(realpath $(dirname $0))

### install selected packages ###
#read -n1 -rep 'Would you like to install the package (Y/N) ' INST
#if [[ $INST == "Y" || $INST == "y" ]]; then
#	yay -S --noconfirm hyprland kitty waybar \
#		neovim firefox rofi-lbonn-wayland-git wlogout brightnessctl
#
#fi

# set default profile path to PROFPATH
cd ~/.mozilla/firefox/
if [[ $(grep '\[Profile[^0]\]' profiles.ini) ]]; then
	PROFPATH=$(grep -E '^\[Profile|^Path|^Default' profiles.ini | grep -1 '^Default=1' | grep '^Path' | cut -c6-)
else
	PROFPATH=$(grep 'Path=' profiles.ini | sed 's/^Path=//')
fi

# check OS for specific firefox config
if [[ "$OSTYPE" == "linux-gnu" ]]; then
	#	cp -r $script_dir/Firefox/Linux/* ~/Downloads/
	cp -r $script_dir/Firefox/Linux/ ~/.mozilla/firefox/$PROFPATH
elif [[ "$OSTYPE" == "msys" ]]; then
	echo "Windows is not supported!"
fi
