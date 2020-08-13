#!/bin/zsh

# Setup xmind-zen
echo
echo 'Setup xmind-zen' | boxes -d ada-box -a c
echo

brew cask list xmind-zen || brew cask install xmind-zen
