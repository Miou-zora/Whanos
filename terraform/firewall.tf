resource "google_compute_firewall" "jenkins_firewall" {
  name       = "jenkins-ci"
  network    = "default"

  allow {
    protocol = "all"
  }

  source_ranges = ["0.0.0.0/0"]
  target_tags   = ["jenkins"]
}