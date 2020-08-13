#!/bin/zsh

# Setup iTerm2
echo 
echo 'Setup iTerm2' | boxes -d ada-box -a c
echo 

brew cask list iterm2 || brew cask install iterm2

mkdir -p ~/.dotfiles/iterm2
cp ./configs/iTerm2/* ~/.dotfiles/iterm2 

defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.dotfiles/iterm2"
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
