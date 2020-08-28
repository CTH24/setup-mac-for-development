c_cd() {
  cd ~/code/$1
  curdir="${PWD##*/}"
  c_title $curdir
  if [ "$1" != "" ]; then
    ll
  else
    ll
  fi
}
alias sd=c_cd
