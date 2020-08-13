#!/bin/zsh

# Setup Docker
echo 
echo 'Setup Docker' | boxes -d ada-box -a c
echo 

brew cask list docker || brew cask install docker
