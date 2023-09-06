resource "argocd_application" "application" {
  metadata {
    name      = "sync-policy-options-using-terraform"
    namespace = var.namespace
    labels = {
      using_sync_policy_options = "true"
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
    }
    sync_policy {
      managed_namespace_metadata {
        labels = var.namespace_metadata_labels
      }
      automated {
        prune     = var.prune_enabled
        self_heal = var.selfheal_enabled
      }
      sync_options = var.sync_options
    }
  }
}
