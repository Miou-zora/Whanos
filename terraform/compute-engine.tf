resource "google_compute_instance" "default" {
  name         = "jenkins-server"
  machine_type = "e2-medium"
  zone         = "europe-west9-a"

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

  # metadata_startup_script = <<SCRIPT
  #   sudo apt update
  #   sudo apt install openjdk-11-jre -y
  #   curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  #       /usr/share/keyrings/jenkins-keyring.asc > /dev/null
  #   echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  #       https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  #       /etc/apt/sources.list.d/jenkins.list > /dev/null
  #   sudo apt-get update
  #   sudo apt-get install jenkins -y
  #   SCRIPT
}
