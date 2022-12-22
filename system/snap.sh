set -x
install() {
  sudo dnf install -y snapd
  sudo systemctl enable --now snapd.socket
  # To enable classic snap support
  sudo ln -s /var/lib/snapd/snap /snap
}
$@
