allow(){
  sudo firewall-cmd --permanent --add-service=nfs
  sudo firewall-cmd --reload
}
$@
