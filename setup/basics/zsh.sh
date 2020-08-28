#!/bin/zsh

# Setup Git
echo
echo 'Setup ZSH' | boxes -d ada-box -a c
echo

brew list zsh || brew install zsh
brew link --overwrite zsh

mkdir -p ~/.dotfiles/zsh
cp -r ./configs/zsh/* ~/.dotfiles/zsh
cp ./configs/zsh/.zshrc ~/.zshrc

cd ~/code
git clone https://github.com/CTH24/python-scripts.git
