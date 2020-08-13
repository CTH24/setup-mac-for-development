#!/bin/zsh

# Setup whatsapp
echo
echo 'Setup whatsapp' | boxes -d ada-box -a c
echo

brew cask list whatsapp || brew cask install whatsapp
