#!/bin/zsh

# Setup Homebrew
echo 
echo 'Setup Homebrew'
echo 

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew list cask || brew install cask
brew list boxes || brew install boxes
brew tap homebrew/cask-fonts

echo 