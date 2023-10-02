reload(){
  sudo grub2-mkconfig -o /boot/grub2/grub.cfg
}
edit(){
  sudo vi /etc/default/grub
}

$@

