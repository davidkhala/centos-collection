set -e
install2() {
  sudo dnf install python2
  curl https://bootstrap.pypa.io/pip/2.7/get-pip.py -o get-pip.py
  python2 get-pip.py
  rm get-pip.py

}
install3() {
  sudo dnf install python3.13 -y 
}
$@
