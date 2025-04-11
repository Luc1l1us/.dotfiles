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

# if [[ $(grep '\[Profile[^0]\]' profiles.ini) ]]; then
#	PROFPATH=$(grep -E '^\[Profile|^Path|^Default' profiles.ini | grep -1 '^Default=1' | grep '^Path' | cut -c6-)
#	echo "first worked"
# else
#	PROFPATH=$(grep 'Path=' profiles.ini | sed 's/^Path=//')
#	echo "the second worked"
# fi

# check OS for specific firefox config
#if [[ "$OSTYPE" == "linux-gnu" ]]; then
#	#	cp -r $script_dir/Firefox/Linux/* ~/Downloads/
#	cp -r $script_dir/Firefox/Linux/* ~/.mozilla/firefox/$PROFPATH
#	echo "Linux detected! Copying Firefox Config..."
#elif [[ "$OSTYPE" == "msys" ]]; then
#	echo "Windows is not supported!"
#fi

# read -n1 -rep 'Copy ZSH config into config folder? (y/n)' zshd
# if [[$zshd == "Y" || $zshd == "y" ]]; then
# cp -r $script_dir/zsh/. ~
# fi

# Copy .zshrc config
#echo "Copying .zshrc conf..."
#cp -r $script_dir/zsh/. ~

# Copy kitty.conf
#echo "Copying kitty conf..."
#cp -r $script_dir/kitty/. ~/.config/kitty/

# Backup, edit, and copy grub theme
echo "Backing up, and Copying..."
sudo bash -c "cp /etc/default/grub /etc/default/grub_backup && cp -r $script_dir/grub/themes/* /usr/share/grub/themes/"

# sudo echo -e "GRUB_THEME=\"/usr/share/grub/themes/Cyberpunk/theme.txt\" >> /etc/default/grub"

#sudo ed -s /etc/default/grub
#a
#GRUB_THEME="/usr/share/grub/themes/Cyberpunk/theme.txt"
#.
#w
#q

