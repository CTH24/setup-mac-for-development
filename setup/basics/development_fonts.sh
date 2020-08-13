#!/bin/zsh

# Setup Development Fonts
echo 
echo 'Setup Development Fonts'| boxes -d ada-box -a c
echo 

brew cask list font-jetbrains-mono || brew cask install font-jetbrains-mono
brew cask list font-fira-code || brew cask install font-fira-code
brew cask list font-hack-nerd-font || brew cask install font-hack-nerd-font
brew cask list font-source-code-pro || brew cask install font-source-code-pro