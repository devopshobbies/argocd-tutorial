variable "server_addr" {
  type        = string
  description = "The server address"
}

variable "username" {
  type        = string
  description = "The Username"
}

variable "password" {
  type        = string
  description = "The Password"
}

variable "insecure" {
  type        = bool
  description = "The Connection Insecure flag"
}

variable "sa_name" {
  type        = string
  description = "The name of argocd serviceaccount"
}

variable "sa_namespace" {
  type        = string
  description = "The namespace of argocd serviceaccount"
}

variable "config_path" {
  type        = string
  description = "The path of kube config"
}

variable "config_context" {
  type        = string
  description = "The context in kube config"
}

variable "argocd-manager-binding" {
  type        = string
  description = "The name of argocd manager clusterrole binding"
}

variable "argocd-manager-secret" {
  type        = string
  description = "The name of argocd manager secret"
}

variable "argocd_secret_cluster" {
  type        = string
  description = "The name of argocd secret cluster"
}

variable "secret_labels" {
  type        = map(string)
  description = "The Labels of argocd manager secret"
}

variable "new_cluster" {
  type        = string
  description = "The name of new cluster"
}

variable "new_cluster_server_addr" {
  type        = string
  description = "The name of new cluster server address"
}