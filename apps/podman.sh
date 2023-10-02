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
desktop-preinstall(){
  # To resolve issue https://github.com/flatpak/flatpak/issues/4724
  sudo flatpak remote-add --if-not-exists --system flathub https://flathub.org/repo/flathub.flatpakrepo

}
socket() {
  
  echo /run/user/${UID}/podman/podman.sock
}
$@
