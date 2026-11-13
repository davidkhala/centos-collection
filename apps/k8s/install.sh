add-repo() {
  
  # This overwrites any existing configuration in /etc/yum.repos.d/kubernetes.repo
  cat <<EOF | sudo tee /etc/yum.repos.d/kubernetes.repo
[kubernetes]
name=Kubernetes
baseurl=https://pkgs.k8s.io/core:/stable:/v1.37/rpm/
enabled=1
gpgcheck=1
gpgkey=https://pkgs.k8s.io/core:/stable:/v1.37/rpm/repodata/repomd.xml.key
EOF

}
kubectl(){
  add-repo
  sudo dnf install -y kubectl
}
kube3() {
  sudo dnf install -y kubelet kubeadm kubectl
  sudo systemctl enable --now kubelet

}
$@
