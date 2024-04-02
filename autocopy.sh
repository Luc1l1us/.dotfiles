#!/bin/bash

read -n1 -rep 'Copy .config files to .dotfiles (y/n) ' copy
if [[ $copy == "Y" || $copy == "y" ]]; then
	cp -r ~/.zshrc ~/.dotfiles/.zshrc
	cd ~/.mozilla/firefox/t7wugmd6.default-release/
	cp -r chrome/ ~/.dotfiles/
	sudo cp -r /etc/default/grub ~/.dotfiles/
fi
