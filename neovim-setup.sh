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

brew install rm-improved # rip -> save rm
brew install lazygit

# Dependencies
sudo apt install ripgrep -y
sudo apt install fd-find -y
ln -s $(which fdfind) ~/.local/bin/fd

echo "Download fonts from https://www.nerdfonts.com/ and unzip them to ~/.fonts/"


echo "Choose option:"
echo "1: Install LazyVim"
echo "2: Install AstroNvim"
echo "3: Rename old Nvim config to .bak"
echo "q: Quit"
read -n1 option

if [[ $option == 1 ]]; then
  # Install lazyvim
  git clone https://github.com/LazyVim/starter ~/.config/nvim
  rm -rf ~/.config/nvim/.git
elif [[ $option == 2 ]]; then
  # Install astrovim
  git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim
  rm -rf ~/.config/nvim/.git
elif [[ $option == 3 ]]; then
  mv ~/.config/nvim ~/.config/nvim.bak
  mv ~/.local/share/nvim ~/.local/share/nvim.bak
  mv ~/.local/state/nvim ~/.local/state/nvim.bak
  mv ~/.cache/nvim ~/.cache/nvim.bak    
fi


echo "alias vim='nvim'" >> ~/.aliases

