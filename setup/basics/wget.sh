#!/bin/zsh

# Setup wget
echo
echo 'Setup wget' | boxes -d ada-box -a c
echo

brew list wget || brew install wget
