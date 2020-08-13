#!/bin/zsh

# Setup Keyboard Layout US with Umlauts
echo 
echo 'Setup Keyboard Layout US with Umlauts' | boxes -d ada-box -a c
echo 

sudo cp -r ./files/keyboard_layout_us_with_umlauts/Roman.bundle "/Library/Keyboard Layouts"

echo 