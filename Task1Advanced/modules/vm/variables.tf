variable "vm_name" {
  description = "Имя виртуальной машины"
  type        = string
}

variable "zone" {
  description = "Зона размещения ВМ"
  type        = string
}

variable "platform_id" {
  description = "Платформа виртуальной машины"
  type        = string
  default     = "standard-v3"
}

variable "cores" {
  description = "Количество vCPU"
  type        = number
}

variable "memory" {
  description = "Объем RAM в ГБ"
  type        = number
}

variable "core_fraction" {
  description = "Гарантированная доля vCPU"
  type        = number
  default     = 100
}

variable "boot_disk_image_id" {
  description = "Образ для boot-диска"
  type        = string
}

variable "boot_disk_size" {
  description = "Размер boot-диска в ГБ"
  type        = number
  default     = 20
}

variable "secondary_disk_size" {
  description = "Размер подключаемого дополнительного диска в ГБ"
  type        = number
}

variable "secondary_disk_type" {
  description = "Тип дополнительного диска"
  type        = string
  default     = "network-hdd"
}

variable "subnet_id" {
  description = "ID подсети"
  type        = string
}

variable "ssh_key" {
  description = "Публичный SSH-ключ в формате 'username:ssh-rsa ...'"
  type        = string
}

variable "nat" {
  description = "Нужен ли внешний IP"
  type        = bool
  default     = true
}

variable "preemptible" {
  description = "Прерываемая ли ВМ"
  type        = bool
  default     = false
}

variable "labels" {
  description = "Набор labels для ВМ и диска"
  type        = map(string)
  default     = {}
}