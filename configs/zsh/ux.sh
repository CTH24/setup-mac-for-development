c_title() {
  clear
  echo
  echo $1 | boxes -d ada-box -a c
  echo && echo
  date
  echo && echo
}

c_fortune() {
  echo && echo
  fortune | boxes -d parchment -a c
  echo && echo
  pwd
  echo && echo
}
alias fo="c_title Fortune && c_fortune"

c_fullstack() {
  clear
  c_title "Full-Stack-Development"
  echo && echo
  fullstack | boxes -d nuke -a c
  echo && echo
}
alias f=c_fullstack
