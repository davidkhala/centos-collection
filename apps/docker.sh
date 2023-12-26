
install-rootless(){
  sudo modprobe ip_tables
  curl https://raw.githubusercontent.com/davidkhala/linux-utils/main/apps/docker.sh | bash -s install-rootless

}
install-compose(){
  sudo yum install -y yum-utils
  sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
  sudo yum update
  sudo yum install docker-compose-plugin
}
$@
