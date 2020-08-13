#!/bin/zsh

# Setup toilet
echo
echo 'Setup toilet' | boxes -d ada-box -a c
echo
brew cask list xquartz || brew cask install xquartz
brew list toilet || brew install toilet
