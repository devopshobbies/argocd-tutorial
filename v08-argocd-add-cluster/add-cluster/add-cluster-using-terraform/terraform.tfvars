server_addr            = "localhost:32073"
username               = "admin"
password               = "vGiZPEnfe9wEToPc"
insecure               = true
sa_name                = "argocd-manager-sa"
sa_namespace           = "default"
config_path            = "~/.kube/config"
config_context         = "new-cluster-context"
argocd-manager-binding = "argocd-manager-binding"
argocd-manager-secret  = "argocd-manager-secret"
argocd_secret_cluster  = "argocd-secret-cluster"
secret_labels = {
  "argocd.argoproj.io/secret-type" = "cluster"
}
new_cluster             = "external"
new_cluster_server_addr = "https://192.168.64.93:6443"