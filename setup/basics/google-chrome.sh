#!/bin/zsh

# Setup google-chrome
echo
echo 'Setup google-chrome' | boxes -d ada-box -a c
echo

brew cask list google-chrome || brew cask install google-chrome
