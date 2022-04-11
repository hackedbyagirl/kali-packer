packer {
  required_plugins {
    vsphere = {
      version = ">= 1.0.0"
      source = "github.com/hashicorp/vmware"
    }
  }
}

source "vmware-iso" "kali-base" {
# ISO Download and Configuration
  iso_url               = var.vm_iso_url
  iso_checksum          = var.vm_iso_checksum

# VM Configurations 
  vm_name               = var.vm_name
  headless              = var.headless
  guest_os_type         = var.vm_guest_os
  tools_upload_flavor   = var.vm_tools
  shutdown_command      = var.shutdown_command
  shutdown_timeout      = var.shutdown_timeout

# VM Connection
  ssh_username          = "${var.packer_ssh_user}"
  ssh_password          = "${var.packer_ssh_pass}"
  ssh_timeout           = var.ssh_timeout
  ssh_port              = var.ssh_port
  ssh_handshake_attempts = var.ssh_handshake

# VM Hardware Configuration
  disk_size             = var.vm_disk_size
  disk_adapter_type     = var.vm_disk_adapter
  cpus                  = var.cpu_num
  memory                = var.vm_ram
  http_directory        = var.http_dir
  network               = var.network
  network_adapter_type  = var.vm_nic

  # Boot Commands
  boot_wait             = var.boot_wait 
  boot_command          = ["<wait><wait><wait><esc><wait><wait><wait>", "/install.amd/vmlinuz ", "initrd=/install.amd/initrd.gz ", "auto ", "url=http://{{ .HTTPIP }}:{{ .HTTPPort }}/preseed.cfg ", "locale=en_US ", "keymap=us<wait> ", "interface=auto ", "hostname=${var.vm_name} ", "domain=${var.domain} ",  "-- <wait> ", "<enter><wait>"]
}

build {
  sources = ["source.vmware-iso.kali-base"]
  provisioner "shell" {
    script = "scripts/setup.sh"
    execute_command = "echo 'packer' | sudo -S sh -c '{{ .Path }}'"
  }
}
