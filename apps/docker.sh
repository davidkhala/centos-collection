
install-rootless(){
  sudo modprobe ip_tables
  curl https://raw.githubusercontent.com/davidkhala/linux-utils/main/apps/docker.sh | bash -s install-rootless

}
$@
