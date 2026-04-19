resource "yandex_compute_disk" "secondary_disk" {
  name = "${var.vm_name}-data"
  type = var.secondary_disk_type
  zone = var.zone
  size = var.secondary_disk_size

  labels = var.labels
}

resource "yandex_compute_instance" "vm" {
  name        = var.vm_name
  zone        = var.zone
  platform_id = var.platform_id

  resources {
    cores         = var.cores
    memory        = var.memory
    core_fraction = var.core_fraction
  }

  boot_disk {
    initialize_params {
      image_id = var.boot_disk_image_id
      size     = var.boot_disk_size
    }
  }

  secondary_disk {
    disk_id = yandex_compute_disk.secondary_disk.id
  }

  network_interface {
    subnet_id = var.subnet_id
    nat       = var.nat
  }

  metadata = {
    ssh-keys = var.ssh_key
  }

  scheduling_policy {
    preemptible = var.preemptible
  }

  labels = var.labels
}