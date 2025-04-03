set -e
install-edge-server(){
  wget https://packages.couchbase.com/releases/couchbase-edge-server/1.0.0/couchbase-edge-server-1.0.0.x86_64.rpm
  sudo dnf install -y couchbase-edge-server-1.0.0.x86_64.rpm
  rm couchbase-edge-server-1.0.0.x86_64.rpm
  /opt/couchbase-edge-server/bin/couchbase-edge-server --version
  echo "default configured to /opt/couchbase-edge-server/etc/config.json"
}

$@

