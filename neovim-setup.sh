#!/bin/zsh

# http://www.lazyvim.org/

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/savim/.zshrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
sudo apt-get install build-essential -y
brew install gcc
 
# Install neovim
brew install neovim


# Alternatively installation using private apt repo

#sudo add-apt-repository ppa:neovim-ppa/unstable -y
#sudo apt update
#sudo apt install neovim -y

nvim -v

# Install lazyvim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

# Dependencies
sudo apt install ripgrep -y
sudo apt install fd-find -y
ln -s $(which fdfind) ~/.local/bin/fd

# https://www.nerdfonts.com/
# unzip to ~/.fonts


# Run :LazyHealth after
echo "Run :LazyHealth in nvim"

#echo "alias vim='nvim'" >> ~/.aliases

brew install rm-improved # rip -> save rm
