install() {
  # Not for fedora
  sudo dnf install -y @container-tools
}
asDocker() {
  sudo dnf install -y podman-docker
}
start() {
  systemctl --user enable --now podman.socket
}

socket() {
  
  echo /run/user/${UID}/podman/podman.sock
}
$@
