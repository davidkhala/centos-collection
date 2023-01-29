install-corretto(){
  wget https://corretto.aws/downloads/latest/amazon-corretto-17-x64-linux-jdk.rpm
  sudo dnf install -y amazon-corretto-17-x64-linux-jdk.rpm
  rm amazon-corretto-17-x64-linux-jdk.rpm
}

$@
