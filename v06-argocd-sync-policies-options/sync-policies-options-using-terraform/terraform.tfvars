username              = "admin"
password              = "GOeR1fjOnQRDFfHp"
namespace             = "argocd"
destination_namespace = "sync-policy-options"
destination_server    = "https://kubernetes.default.svc"
server_addr           = "localhost:32073"
insecure              = true
repo_url              = "https://github.com/devopshobbies/argocd-tutorial.git"
path                  = "v03-argocd-applications/directoryOfmanifests"
target_revision       = "main"
prune_enabled         = true
selfheal_enabled      = true
sync_options          = ["CreateNamespace=true", "FailOnSharedResource=true"]
namespace_metadata_labels = {
  created_by     = "Terraform"
  Course_creator = "Mohammad"
}