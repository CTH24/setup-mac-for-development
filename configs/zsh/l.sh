c_l() {
  curdir="${PWD##*/}"
  c_title $curdir
  ls -lt
  c_fortune
}
alias l=c_l
