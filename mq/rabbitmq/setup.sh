set -e
register() {
    # Import the Signing Keys
    ## primary RabbitMQ signing key
    sudo rpm --import 'https://github.com/rabbitmq/signing-keys/releases/download/3.0/rabbitmq-release-signing-key.asc'
    ## modern Erlang repository
    sudo rpm --import 'https://github.com/rabbitmq/signing-keys/releases/download/3.0/cloudsmith.rabbitmq-erlang.E495BB49CC4BBE5B.key'
    ## RabbitMQ server repository
    sudo rpm --import 'https://github.com/rabbitmq/signing-keys/releases/download/3.0/cloudsmith.rabbitmq-server.9F4587F226208342.key'
    sudo cp ./rabbitmq.repo /etc/yum.repos.d/rabbitmq.repo
}
install() {
    sudo dnf update -y
    ## install these dependencies from standard OS repositories
    sudo dnf install -y logrotate
    ## install RabbitMQ and zero dependency Erlang
    sudo dnf install -y erlang rabbitmq-server
    sudo systemctl enable rabbitmq-server --now
}
configure() {
    vi /etc/rabbitmq/rabbitmq.conf
}

$@
