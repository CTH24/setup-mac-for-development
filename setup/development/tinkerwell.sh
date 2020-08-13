#!/bin/zsh

# Setup tinkerwell
echo
echo 'Setup tinkerwell' | boxes -d ada-box -a c
echo

brew cask list tinkerwell || brew cask install tinkerwell
