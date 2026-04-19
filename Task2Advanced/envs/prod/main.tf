terraform {
  required_version = ">= 1.5.0"

  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "~> 0.140"
    }
  }

  backend "s3" {}
}

provider "yandex" {
  token     = var.token
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.zone
}

module "vm" {
  source = "../../modules/vm"

  vm_name             = var.vm_name
  zone                = var.zone
  cores               = var.cores
  memory              = var.memory
  subnet_id           = var.subnet_id
  ssh_key             = var.ssh_key
  boot_disk_image_id  = var.boot_disk_image_id
  secondary_disk_size = var.secondary_disk_size

  labels = var.labels
}