common() {
  sudo passwd $USER # interactive
  curl https://raw.githubusercontent.com/davidkhala/centos-collection/main/network/firewall.sh | bash -s allow-all
}
special(){
  # only required for centos:stream
  sudo dnf install python3-librepo -y
}
$@

