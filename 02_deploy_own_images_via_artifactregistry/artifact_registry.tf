resource "google_artifact_registry_repository" "artifact_registry" {
  location      = local.region
  repository_id = "docker-repository"
  description   = "Docker Repository for CloudRun"
  format        = "DOCKER"

  cleanup_policies {
    id     = "delete"
    action = "DELETE"
    condition {
      older_than   = "3600s"
    }
  }
}