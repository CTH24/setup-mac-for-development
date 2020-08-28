c_ls() {
  curdir="${PWD##*/}"
  c_title $curdir
  l
  c_fortune
}
alias ll=c_ls
