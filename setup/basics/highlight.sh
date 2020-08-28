#!/bin/zsh

# Setup highlight
echo
echo 'Setup highlight' | boxes -d ada-box -a c
echo

brew list highlight || brew install highlight
