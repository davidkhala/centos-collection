reload(){
  sudo grub2-mkconfig -o /boot/grub2/grub.cfg
}
edit(){
  sudo vi /etc/default/grub
}
install-grub-customizer(){
  # The GUI tools
  sudo dnf install -y https://rpmfind.net/linux/epel/9/Everything/x86_64/Packages/g/grub-customizer-5.2.2-2.el9.x86_64.rpm

}

$@

