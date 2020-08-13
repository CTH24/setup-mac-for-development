#!/bin/zsh

# Setup wireshark
echo
echo 'Setup wireshark' | boxes -d ada-box -a c
echo

brew cask list wireshark || brew cask install wireshark
