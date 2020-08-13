#!/bin/zsh

# Setup battle-net
echo
echo 'Setup battle-net' | boxes -d ada-box -a c
echo

brew cask list battle-net || brew cask install battle-net
