resource "google_artifact_registry_repository" "my-repo" {
  location      = var.project_region
  repository_id = "whanos-registry"
  format        = "DOCKER"
}
