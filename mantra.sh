#!/bin/zsh


# System update
sudo apt update && sudo apt upgrade -y


# Installing nvidia drivers: https://phoenixnap.com/kb/install-nvidia-drivers-ubuntu
# sudo add-apt-repository ppa:graphics-drivers/ppa
# ubuntu-drivers devices
# sudo ubuntu-drivers autoinstall
# or
# sudo apt install firmware-linux -y #drivers


# Common packages install
sudo apt install tree -y
sudo apt install firejail -y
sudo apt install htop -y
sudo apt install ufw -y
sudo apt install nmap -y
sudo apt install locate -y
sudo apt install vim -y
sudo apt install curl -y


echo "source ~/.aliases" >> ~/.zshrc
touch ~/.aliases

mkdir -p ~/.local/bin
echo 'export PATH=$HOME/.local/bin:$PATH' >> ~/.zshrc

# SDK man install
sudo curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sdk version
sdk update
sdk install java
sdk install kotlin

# Fish shell install - crashes when installed with snap
#sudo apt-add-repository ppa:fish-shell/release-3
#sudo apt update
#sudo apt install fish -y
# mkdir ~/.config/fish/functions
# cp ./fish_functions/* ~/.config/fish/functions/

# SDK man support for the fish shell
# sudo fisher install reitzig/sdkman-for-fish@v1.4.0


# Install snapd's for ubuntu
sudo apt install snapd -y
sudo snap install code --classic
sudo snap install intellij-idea-community --classic
#sudo snap install docker #docker from snap have bugs
sudo snap install postman
sudo snap install node --classic
sudo snap install chromium
sudo snap install mailspring
sudo snap install bitwarden


# Install nodejs 17 - manual
# curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
# sudo apt update
# sudo apt-get install -y nodejs


# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Docker
./docker-setup.sh

# Clean up
sudo apt autoremove
