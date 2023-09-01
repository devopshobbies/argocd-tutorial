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

variable "repo_password" {
  type        = string
  description = "The Password or the token of my github account"
}

variable "repo_username" {
  type        = string
  description = "The username or the token name"
}

variable "repo_url" {
  type        = string
  description = "The Private Repository Url"
}
