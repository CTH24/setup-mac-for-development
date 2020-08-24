#!/bin/zsh

# Mac Prepare
sudo softwareupdate -i -a --verbos
sh ./prepare/xcode_command_line_tools.sh
sh ./prepare/homebrew.sh
