resource "google_container_cluster" "whanos-cluster" {
  name                     = "whanos-cluster"
  location                 = var.project_region

  enable_autopilot         = true
}

data "google_client_config" "provider" {}

data "google_container_cluster" "cluster" {
  name     = google_container_cluster.whanos-cluster.name
  location = google_container_cluster.whanos-cluster.location

  depends_on = [ google_container_cluster.whanos-cluster ]
}

# provider "helm" {
#   kubernetes {
#     host  = "https://${data.google_container_cluster.cluster.endpoint}"
#     token = data.google_client_config.provider.access_token
#     cluster_ca_certificate = base64decode(
#       data.google_container_cluster.cluster.master_auth[0].cluster_ca_certificate
#     )
#   }
# }

resource "helm_release" "example" {
  depends_on = [ google_container_cluster.whanos-cluster ]
  name       = "my-local-chart"
  chart      = "../helm"

  values = [
    file("values.yaml"), # which is Whanos.yml
    file("setup.yaml") # which is Setup configuration like name
  ]
}
