pre-install() {
    sudo dnf install -y tigervnc-server firewalld
}

install() {
    pre-install
    sudo dnf install -y epel-release # Not for fedora
    install-xrdp
    post-install
}
install-xrdp() {
    sudo dnf install -y xrdp
    sudo systemctl enable --now xrdp.service
    sudo firewall-cmd --permanent --add-port=3389/tcp
    sudo firewall-cmd --reload
}
$@
