provider "google" {
  project                     = var.project_id
  region                      = var.project_region
  impersonate_service_account = "terraform@${var.project_id}.iam.gserviceaccount.com"
  credentials                 = "keys.json"
}
