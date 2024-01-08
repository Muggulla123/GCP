# tf/modules/compute-instance/main.tf

resource "google_compute_instance" "vm_instance" {
  name                = var.instance_name
  machine_type        = var.machine_type
  deletion_protection = var.deletion_protection

  boot_disk {
    initialize_params {
      image = var.image
      labels = {
        env = "test"
      }
    }
  }

  network_interface {
    network = var.network
    access_config {
    }
  }

  metadata_startup_script = var.metadata_startup_script
}
