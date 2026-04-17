variable "token" {
  description = "Yandex Cloud OAuth/IAM token"
  type        = string
  sensitive   = true
}

variable "cloud_id" {
  type = string
}

variable "folder_id" {
  type = string
}

variable "zone" {
  type = string
}

variable "vm_name" {
  type = string
}

variable "cores" {
  type = number
}

variable "memory" {
  type = number
}

variable "secondary_disk_size" {
  type = number
}

variable "subnet_id" {
  type = string
}

variable "ssh_key" {
  type = string
}

variable "boot_disk_image_id" {
  type = string
}

variable "labels" {
  type    = map(string)
  default = {}
}