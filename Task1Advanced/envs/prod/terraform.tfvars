token     = "your_token"
cloud_id  = "your_cloud_id"
folder_id = "your_folder_id"

zone       = "ru-central1-a"
vm_name    = "future20-prod-vm"
cores      = 8
memory     = 16
subnet_id  = "e9bxxxxxxxxxxxxxxx"
ssh_key    = "ubuntu:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCexample"
boot_disk_image_id  = "fd8xxxxxxxxxxxxxxx"
secondary_disk_size = 100

labels = {
  env     = "prod"
  project = "future20"
  critical = "true"
}