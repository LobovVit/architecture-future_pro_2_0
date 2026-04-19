zone       = "ru-central1-b"
vm_name    = "future20-stage-vm"
cores      = 4
memory     = 4
subnet_id  = "e2lxxxxxxxxxxxxxxx"
ssh_key    = "ubuntu:ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCexample"
boot_disk_image_id  = "fd8xxxxxxxxxxxxxxx"
secondary_disk_size = 20

labels = {
  env     = "stage"
  project = "future20"
}