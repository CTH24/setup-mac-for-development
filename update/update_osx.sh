#!/bin/zsh

# Updates OSX
echo 
echo 'Update OSX' | boxes -d ada-box -a c
echo  

sudo softwareupdate -i -a --verbose