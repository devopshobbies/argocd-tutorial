variable "username" {
  type        = string
  description = "Username Value"
}

variable "password" {
  type        = string
  description = "Password Value"
}

variable "namespace" {
  type        = string
  description = "Namespace Value"
}

variable "destination_namespace" {
  type        = string
  description = "Destination Namespace Value"
}

variable "destination_server" {
  type        = string
  description = "Destination Server Value"
}

variable "server_addr" {
  type        = string
  description = "server_addr Value"
}

variable "repo_url" {
  type        = string
  description = "Repo_url Value"
}

variable "path" {
  type        = string
  description = "Path Value"
}

variable "target_revision" {
  type        = string
  description = "Target_revision Value"
}

variable "insecure" {
  type        = bool
  description = "insecure Value as a boolean"
}

variable "prune_enabled" {
  type        = bool
  description = "Auto-prune Value as a boolean"
}

variable "selfheal_enabled" {
  type        = bool
  description = "Auto-selfheal Value as a boolean"
}

variable "sync_options" {
  type        = list(string)
  description = "List of sync options as a list of strings"
}

variable "namespace_metadata_labels" {
  type        = map(string)
  description = "Map of namespace metadata labels as a map of strings"
}