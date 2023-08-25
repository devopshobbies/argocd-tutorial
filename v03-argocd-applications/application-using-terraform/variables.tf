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

variable "values_files" {
  type        = list(string)
  description = "Values_files Value as a list"
}

variable "insecure" {
  type        = bool
  description = "insecure Value as a boolean"
}
