# Shortcuts
alias t="touch"
alias c="code ."
alias v="vim"
alias web="open https://google.com"

# Find Text in Folder
c_ft() {
  c_title "Find Text in Folder"
  grep -rnw '.' -e "$1"
  c_fortune
}
alias ft=c_ft

# Find File in Folder
c_ff() {
  c_title "Find File in Folder"
  find . -name "$1" -type f
  c_fortune
}
alias ff=c_ff
