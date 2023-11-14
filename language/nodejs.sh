#!/usr/bin/env bash
install() {
#   switch enabled streams of a module
    sudo dnf module reset -y nodejs
    sudo dnf install -y @nodejs:20
}
nodeGYPDependencies() {
    sudo dnf groupinstall -y "Development Tools"
}

$@
