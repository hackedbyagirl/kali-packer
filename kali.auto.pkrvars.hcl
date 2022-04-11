// vsphere.auto.pkrvars.hcl

// Variables that are loaded automatically and are the same for every build. This
// is where the vSphere variables will be stored. File is not needed to be passed
// at the command line.

# ISO Download
vm_iso_url = "http://cdimage.kali.org/kali-2021.4/kali-linux-2021.4-installer-amd64.iso"
vm_iso_checksum = "13c8ed5b87462e966c5afca129a4b76247f5b2b166733a13d154d1a1d31521d3"

# VM Configuratiions
vm_name = "kali-base"
vm_guest_os = "debian10_64Guest"
vm_tools = "linux"
shutdown_command = "echo 'packer' | sudo -S shutdown -P now"
shutdown_timeout = "15m"

# VM Connection
ssh_timeout = "12h"
ssh_port = "22"
ssh_handshake = "20"

# VM Hardware Configuration
vm_disk_size = 60000
vm_disk_adapter = "lsilogic"
cpu_num = 2
vm_ram = 8192
http_dir = "http"
network = "nat"
vm_nic = "vmxnet3"

# Boot Configuration
boot_wait = "5s"

# Driver Configuration
fusion_path = ""

# Export Config
output_dir = ""
#output_format = "ova"

