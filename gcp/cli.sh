# The gcloud tool is a part of the Cloud SDK. You must download and install the Cloud SDK on your system and initialize it before you can use the gcloud tool.
install() {
    sudo tee -a /etc/yum.repos.d/google-cloud-sdk.repo <<EOM
[google-cloud-cli]
name=Google Cloud CLI
baseurl=https://packages.cloud.google.com/yum/repos/cloud-sdk-el8-x86_64
enabled=1
gpgcheck=1
repo_gpgcheck=0
gpgkey=https://packages.cloud.google.com/yum/doc/rpm-package-key.gpg
EOM

    sudo dnf install -y google-cloud-cli
}

$@
