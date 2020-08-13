up() {
  clear
  echo
  echo 'CTH24 - Mac Update' | boxes -d ada-box -a c
  echo
  brew update
  brew upgrade
  brew cask upgrade
  brew cleanup
  brew doctor
  omz update
  mas upgrade
}
