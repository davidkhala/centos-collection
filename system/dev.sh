sudo dnf groupinstall -y "Development Tools"
install-libtool() {
    sudo dnf install -y libtool

}
kernel(){
    sudo dnf install -y kernel-devel
}

$@
