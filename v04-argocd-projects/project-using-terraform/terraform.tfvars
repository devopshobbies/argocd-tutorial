server_addr       = "localhost:32073"
username          = "admin"
password          = "O0Nk42qUhEOMK4q8"
insecure          = true
project_name      = "terraform-project"
project_namespace = "argocd"
project_labels = {
  acceptance = "true"
}
project_description = "this project has been created using terraform"
source_namespaces   = ["argocd"]
source_repos        = ["*"]
destinations = {
  destination_one = {
    server    = "*",
    namespace = "dev"
  },
  destination_two = {
    server    = "*",
    namespace = "prod"
  }
}
cluster_resources_whitelist = {
  resource_one = {
    group = "*"
    kind  = "*"
  }
}
namespace_resources_whitelist = {
  resource_one = {
    group = "apps"
    kind  = "Deployment"
  },
  resource_two = {
    group = ""
    kind  = "Service"
  }
}
roles = [
  {
    name = "read-only"
    policies = [
      "p, proj:terraform-project:read-only, applications, get, terraform-project/*, allow",
    ]
  }
]
