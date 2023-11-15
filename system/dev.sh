
sudo dnf groupinstall -y "Development Tools" # including kernel-devel

install-libtool() {
    sudo dnf install -y libtool

}


$@
