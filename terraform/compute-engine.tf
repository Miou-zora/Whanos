resource "google_compute_instance" "default" {
  name         = "jenkins-server"
  machine_type = var.machine_type
  zone         = var.machine_zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }

  tags= ["jenkins"]
}
