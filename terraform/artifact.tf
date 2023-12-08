resource "google_artifact_registry_repository" "my-repo" {
  location      = var.project_region
  repository_id = "whanos-registry"
  format        = "DOCKER"
  mode          = "REMOTE_REPOSITORY"
  remote_repository_config {
    docker_repository {
      public_repository = "DOCKER_HUB"
    }
  }
}