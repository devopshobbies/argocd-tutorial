# Private Git repository
resource "argocd_repository" "private" {
  repo     = var.repo_url
  username = var.repo_username
  password = var.repo_password
}
