#!/bin/zsh

# Setup speedtest-cli
echo 
echo 'Setup speedtest-cli' | boxes -d ada-box -a c
echo 

brew list speedtest-cli || brew install speedtest-cli