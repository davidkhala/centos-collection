user=${2:-admin}
password=${3:-password}
path=${4:-/mnt/data}
install-server() {
  sudo dnf install -y https://dl.min.io/server/minio/release/linux-amd64/minio-20221021223748.0.0.x86_64.rpm
}
start-attach() {
  sudo mkdir $path
  sudo chown -R $USER $path && sudo chmod u+rxw $path
  MINIO_ROOT_USER=$user MINIO_ROOT_PASSWORD=$password minio server $path --console-address ":9001"

}
start-podman() {
  podman run -d -p 9000:9000 -p 9001:9001 -e "MINIO_ROOT_USER=${user}" -e "MINIO_ROOT_PASSWORD=${password}" \
    -v $path:/data \
    quay.io/minio/minio server /data --console-address ":9001"
}

$@
