#!/bin/zsh

# Setup stoplight-studio
echo
echo 'Setup stoplight-studio' | boxes -d ada-box -a c
echo

brew cask list stoplight-studio || brew cask install stoplight-studio
