data "yandex_compute_image" "ubuntu" {
  family = var.image_family
}

resource "yandex_compute_instance" "vm" {
  name        = var.vm_name
  platform_id = var.platform_id
  zone        = var.zone
  description = "VM created by Terraform"

  resources {
    cores         = var.cores
    memory        = var.memory
    core_fraction = var.core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.id
      size     = var.disk_size
      type     = var.disk_type
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = true
  }

  # ИСПРАВЛЕННЫЙ БЛОК METADATA
  metadata = {
    user-data = templatefile("${path.module}/cloud-init.yml", {
      public_key = chomp(var.public_key)
    })
    serial-port-enable = "1"
  }

  labels = var.labels

  scheduling_policy {
    preemptible = true
  }

  allow_stopping_for_update = true
}