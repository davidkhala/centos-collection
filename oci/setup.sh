common() {
  curl https://raw.githubusercontent.com/davidkhala/centos-collection/main/network/firewall.sh | bash -s allow-all
  echo -e "$1\n$1\n" | sudo passwd $USER
}
special(){
  # only required for centos:stream
  sudo dnf install python3-librepo -y
}
$@

