centos-install() {
    sudo dnf groupinstall -y "Gnome Desktop"
}
install() {
    centos-install
    post-install    
}

post-install(){
    # shared with RHEL
    ln -sf /lib/systemd/system/runlevel5.target /etc/systemd/system/default.target
    sudo systemctl set-default graphical.target
}