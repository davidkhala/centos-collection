
install-rootless(){
  sudo modprobe ip_tables
  curl https://raw.githubusercontent.com/davidkhala/linux-utils/main/apps/docker.sh | bash -s install-rootless

}
install-compose(){
  add-distro-repository
  sudo yum update
  sudo yum install -y docker-compose-plugin
}
add-distro-repository() {
  sudo yum install -y yum-utils
  sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
}
remove-distro-repository(){
  sudo rm /etc/yum.repos.d/docker-ce.repo
}
$@
