#!/bin/zsh

# Setup grep
echo 
echo 'Setup grep' | boxes -d ada-box -a c
echo 

brew list grep || brew install grep
brew link --overwrite grep