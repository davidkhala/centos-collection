set -e
register() {
    sudo rpm --import https://packages.confluent.io/confluent-cli/rpm/archive.key
    sudo yum install -y yum-utils
    sudo yum-config-manager --add-repo https://packages.confluent.io/confluent-cli/rpm/confluent-cli.repo
    sudo yum clean all
}
install() {
    sudo yum install -y confluent-cli
}
$@
