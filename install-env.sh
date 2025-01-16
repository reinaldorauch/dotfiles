#!/bin/bash

#
# Script to download common tools used to development in a endeavour os environment
#

sudo pacman -S git nitrogen asdf-vm zsh alacritty docker vscode-oss github-cli

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

chsh -s $(which zsh)

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

asdf plugin add nodejs
asdf install nodejs latest

# Installing wallpaper
if [! -d $HOME/Imagens/wallpapers ]; then
  mkdir -p $HOME/Imagens/wallpapers
fi

cp ./assets/wp.jpg $HOME/Imagens/wallpapers/wp.jpg

nitrogen --set-auto $HOME/Imagens/wallpapers/wp.jpg >/dev/null 2>/dev/null

gh auth login

./restore.sh
