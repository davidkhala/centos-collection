set -e
install() {
  # According to https://docs.rackspace.com/support/how-to/installing-mariadb-server-on-centos/
  sudo dnf install -y mariadb-server
  curl https://raw.githubusercontent.com/davidkhala/linux-utils/main/database/mariaDB.sh | bash -s post-install

}
$@
