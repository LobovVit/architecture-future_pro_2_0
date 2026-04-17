variable "token" {
  description = "Yandex Cloud OAuth/IAM token"
  type        = string
  sensitive   = true
}

variable "cloud_id" {
  description = "Yandex Cloud ID"
  type        = string
}

variable "folder_id" {
  description = "Yandex Folder ID"
  type        = string
}

variable "zone" {
  description = "Зона размещения"
  type        = string
}

variable "vm_name" {
  description = "Имя ВМ"
  type        = string
}

variable "cores" {
  description = "Количество vCPU"
  type        = number
}

variable "memory" {
  description = "Объем RAM"
  type        = number
}

variable "secondary_disk_size" {
  description = "Размер дополнительного диска"
  type        = number
}

variable "subnet_id" {
  description = "ID подсети"
  type        = string
}

variable "ssh_key" {
  description = "SSH key"
  type        = string
}

variable "boot_disk_image_id" {
  description = "ID образа ОС"
  type        = string
}

variable "labels" {
  description = "Labels"
  type        = map(string)
  default     = {}
}