resource "argocd_application" "helm" {
  metadata {
    name      = "helm-app-using-terraform"
    namespace = var.namespace
    labels = {
      test = "true"
    }
  }

  spec {
    destination {
      server    = var.destination_server
      namespace = var.destination_namespace
    }

    source {
      repo_url        = var.repo_url
      path            = var.path
      target_revision = var.target_revision
      helm {
        value_files = var.values_files
      }
    }
  }
}
