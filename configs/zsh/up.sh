up() {
  clear
  echo
  echo 'CTH24 - Mac Update' | boxes -d ada-box -a c
  echo
  brew update
  brew upgrade
  brew cask upgrade
  brew cleanup
  upgrade_oh_my_zsh
  mas upgrade
}
