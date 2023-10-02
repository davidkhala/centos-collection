install() {
  # Not for fedora
  # No `@` as prefix for Centos 9 Stream
  sudo dnf install -y container-tools
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
