#!/bin/bash
#
# This file updates my config dotfiles related to my dev environment based on
# EndeavourOS Galileo, lazyvim, Noto Sans Nerd Font and others
#

if [ ! -d ./.config/i3 ]; then
    mkdir -p ./.config/i3
fi
if [ ! -d ./.config/nvim ]; then
   mkdir -p ./.config/nvim
fi
if [ ! -d ./.fonts ]; then
   mkdir -p ./.fonts
fi

cp $HOME/.config/i3/{config,i3blocks.conf,keybindings} ./.config/i3/
cp $HOME/.alacritty.toml ./
cp $HOME/.fonts/NotoSansMNerdFont-Regular.ttf ./.fonts/
cp -r $HOME/.config/nvim/* ./.config/nvim/
cp $HOME/.zshrc ./
cp $HOME/.tool-versions ./
