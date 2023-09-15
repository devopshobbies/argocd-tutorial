resource "kubernetes_service_account" "argocd_manager_sa" {
  metadata {
    name      = var.sa_name
    namespace = var.sa_namespace
  }
}

resource "kubernetes_secret" "argocd_manager_secret" {
  metadata {
    name = var.argocd-manager-secret
    annotations = {
      "kubernetes.io/service-account.name" = "${kubernetes_service_account.argocd_manager_sa.metadata.0.name}"
    }
  }
  type = "kubernetes.io/service-account-token"
}

resource "kubernetes_cluster_role_binding" "argocd_manager_binding" {
  metadata {
    name = var.argocd-manager-binding
  }

  role_ref {
    api_group = "rbac.authorization.k8s.io"
    kind      = "ClusterRole"
    name      = "cluster-admin"
  }

  subject {
    kind      = "ServiceAccount"
    name      = kubernetes_service_account.argocd_manager_sa.metadata.0.name
    namespace = kubernetes_service_account.argocd_manager_sa.metadata.0.namespace
  }
}

data "kubernetes_secret" "argocd_manager_secret" {
  metadata {
    name = kubernetes_secret.argocd_manager_secret.metadata.0.name
  }
}

resource "argocd_cluster" "new_cluster" {
  provider = argocd.argocd_server
  server = var.new_cluster_server_addr

  config {
    bearer_token = "${lookup(data.kubernetes_secret.argocd_manager_secret.data, "token")}"

    tls_client_config {
      ca_data  = "${lookup(data.kubernetes_secret.argocd_manager_secret.data, "ca.crt")}"
      insecure = false
    }
  }
}