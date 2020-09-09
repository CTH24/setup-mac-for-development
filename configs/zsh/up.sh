up() {
  c_title 'CTH24 - Mac Update'
  echo 'Homebrew Update'
  brew update
  brew upgrade
  brew upgrade --cask
  brew cleanup
  brew doctor
  omz update
  mas upgrade
  c_fortune
}
