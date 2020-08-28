c_ip() {
  c_title "IP Address"
  IP=$(curl ifconfig.me)
  echo
  echo $IP | boxes -d stone -a c
  echo '\n'
  ifconfig | grep "inet " | grep -v 127.0.0.1
  c_fortune
}
alias ip=c_ip

c_clear_dns_cache() {
  c_title "Clear DNS Cache"
  sudo killall -HUP mDNSResponder
  c_fortune
}
alias clearDNSCache=c_clear_dns_cache
