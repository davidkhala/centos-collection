set -e
register() {
    # https://docs.confluent.io/platform/current/installation/installing_cp/rhel-centos.html#get-the-software
    sudo yum install -y curl which
    sudo rpm --import https://packages.confluent.io/rpm/7.9/archive.key
    sudo wget -P /etc/yum.repos.d/ https://raw.githubusercontent.com/davidkhala/centos-collection/refs/heads/main/mq/confluent/confluent.repo
    sudo yum clean all

}
install() {
    local community_edition=$1

    if [ -z "$community_edition" ]; then
        sudo yum install -y confluent-platform confluent-security
    else
        sudo yum install -y confluent-community-2.13
    fi
}

$@
