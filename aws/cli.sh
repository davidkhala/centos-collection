install() {
  ## not for oracle-linux, otherwise it conflicts with Oracle Cloud Infrastructure CLI client
  sudo dnf install -y awscli
}

$@
