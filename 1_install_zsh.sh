#!/usr/bin/env bash

# System update
sudo apt update && sudo apt upgrade -y

echo "Zsh or Fish?"
echo "1: Zsh (default)"
echo "2: Fish"
read -r which_shell

if [[ $which_shell == 2 ]]; then
	# Fish shell install - crashes when installed with snap
	sudo apt-add-repository ppa:fish-shell/release-3
	sudo apt update
	sudo apt install fish -y
	mkdir ~/.config/fish/functions
	cp ./fish_functions/* ~/.config/fish/functions/

	# SDK man support for the fish shell
	sudo fisher install reitzig/sdkman-for-fish@v1.4.0
else
	# Install zsh
	sudo apt install zsh -y
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
	ln -s ./.aliases ~/.aliases #needs to be changed to absolute path
fi

# Have to reboot to apply changes
echo 'Reboot now to apply changes...'
read -rn1 -p "Reboot? Y/n " reboot
if [[ $reboot != n ]]; then
	reboot
fi
