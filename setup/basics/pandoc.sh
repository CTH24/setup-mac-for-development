#!/bin/zsh

# Setup pandoc
echo
echo 'Setup pandoc' | boxes -d ada-box -a c
echo

brew list pandoc || brew install pandoc
