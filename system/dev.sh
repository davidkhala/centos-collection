sudo dnf groupinstall -y "Development Tools"
install-libtool() {
    sudo dnf install -y libtool

}
$@
