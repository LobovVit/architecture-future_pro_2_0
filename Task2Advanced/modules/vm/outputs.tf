output "vm_id" {
  description = "ID виртуальной машины"
  value       = yandex_compute_instance.vm.id
}

output "vm_name" {
  description = "Имя виртуальной машины"
  value       = yandex_compute_instance.vm.name
}

output "internal_ip_address" {
  description = "Внутренний IP-адрес ВМ"
  value       = yandex_compute_instance.vm.network_interface[0].ip_address
}

output "external_ip_address" {
  description = "Внешний IP-адрес ВМ"
  value       = try(yandex_compute_instance.vm.network_interface[0].nat_ip_address, null)
}

output "secondary_disk_id" {
  description = "ID дополнительного диска"
  value       = yandex_compute_disk.secondary_disk.id
}

output "secondary_disk_name" {
  description = "Имя дополнительного диска"
  value       = yandex_compute_disk.secondary_disk.name
}