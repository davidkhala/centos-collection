# man: https://firewalld.org/documentation/man-pages/firewall-cmd.html
set -e

add-port() {
    # Error: INVALID_PORT: bad port (most likely missing protocol), correct syntax is portid[-portid]/protocol
    sudo firewall-cmd --permanent --add-port=$1
    reload
}
add-service() {
    sudo firewall-cmd --permanent --add-service=$1
    reload
}
reload() {
    sudo firewall-cmd --reload
}
list() {
    sudo firewall-cmd --list-all
}
list-service() {
    sudo firewall-cmd --list-service
}
current-zone() {
    sudo firewall-cmd --get-active-zones
}
list-port() {
    sudo firewall-cmd --list-ports
}
remove-port() {
    sudo firewall-cmd --remove-port=$1
    reload
}

$@
