locals {
  roles_count = length(var.roles)
}

resource "argocd_project" "terraform-project" {
  metadata {
    name      = var.project_name
    namespace = var.project_namespace
    labels    = var.project_labels
  }

  spec {
    description = var.project_description

    source_namespaces = var.source_namespaces
    source_repos      = var.source_repos

    dynamic "destination" {
      for_each = var.destinations
      content {
        server    = destination.value.server
        namespace = destination.value.namespace
      }
    }

    dynamic "cluster_resource_whitelist" {
      for_each = var.cluster_resources_whitelist
      content {
        group = cluster_resource_whitelist.value.group
        kind  = cluster_resource_whitelist.value.kind
      }
    }

    dynamic "namespace_resource_whitelist" {
      for_each = var.namespace_resources_whitelist
      content {
        group = namespace_resource_whitelist.value.group
        kind  = namespace_resource_whitelist.value.kind
      }
    }

    dynamic "role" {
      for_each = var.roles
      content {
        name     = role.value.name
        policies = role.value.policies
      }
    }
  }
}

resource "argocd_project_token" "secret" {
  count   = local.roles_count
  project = var.project_name
  role    = var.roles[count.index]["name"]
  depends_on = [
    argocd_project.terraform-project
  ]
}
