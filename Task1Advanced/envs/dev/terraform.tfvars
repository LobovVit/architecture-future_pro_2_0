token     = "your_token"
cloud_id  = "your_cloud_id"
folder_id = "your_folder_id"

zone                = "ru-central1-a"
vm_name             = "future20-dev-vm"
cores               = 2
memory              = 2
subnet_id           = "e9bolmvqeijv1pmnvfcn"
ssh_key             = "ubuntu:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCexample"
boot_disk_image_id  = "fd8429vdm30a3688t25j"
secondary_disk_size = 10

labels = {
  env     = "dev"
  project = "future20"
}