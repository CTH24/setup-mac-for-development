#!/bin/zsh

# Setup twitch
echo
echo 'Setup twitch' | boxes -d ada-box -a c
echo

brew cask list twitch || brew cask install twitch
