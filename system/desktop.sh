centos-install() {
    sudo dnf groupinstall -y "Gnome Desktop"
}
install() {
    centos-install
    post-install    
}
install-pinyin() {
    sudo dnf install -y ibus-libpinyin
    reboot
}

post-install(){
    # shared with RHEL
    sudo ln -sf /lib/systemd/system/runlevel5.target /etc/systemd/system/default.target
    sudo systemctl set-default graphical.target
}
$@
