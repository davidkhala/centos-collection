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
install-gke-plugin() {
  # `gke-gcloud-auth-plugin`, which is needed for continued use of kubectl, was not found or is not executable.
  # https://cloud.google.com/blog/products/containers-kubernetes/kubectl-auth-changes-in-gke
  sudo yum install -y google-cloud-cli-gke-gcloud-auth-plugin

}
snap-install() {
    # error: This revision of snap "google-cloud-sdk" was published using classic confinement and thus
    #    may perform arbitrary system changes outside of the security sandbox that snaps are usually
    #    confined to, which may put your system at risk.
    sudo snap install google-cloud-sdk --classic
}
"$@"
