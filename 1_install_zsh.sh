#!/bin/bash


# System update
sudo apt update && sudo apt upgrade -y


# Install zsh
sudo apt install zsh -y
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Have to reboot to apply changes
echo 'Reboot now to apply changes...'
