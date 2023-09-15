terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.23.0"
    }
    argocd = {
      source  = "oboukili/argocd"
      version = "6.0.3"
    }
  }
}

provider "kubernetes" {
  config_path    = var.config_path
  config_context = var.config_context
}

provider "argocd" {
  alias       = "argocd_server"
  server_addr = var.server_addr
  username    = var.username
  password    = var.password
  insecure    = var.insecure
}