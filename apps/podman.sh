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
install-desktop(){
  flatpak install -y flathub io.podman_desktop.PodmanDesktop

}
socket() {
  
  echo /run/user/${UID}/podman/podman.sock
}
$@
