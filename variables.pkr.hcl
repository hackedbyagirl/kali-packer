//  variables.pkr.hcl

// This is where the HCL varaibels are declared. You could put these at the top of
// your main .pkr.hcl file, but it is good practice to keep your variables files
// seperate.

// Variable declarations for input variables. Input variables serve as parameters
// for a Packer build, allowing aspects of the build to be customized without
// altering the build's own source code.


// Virtual Machine Settings

variable "vm_name" {
  type = string
  description = "Name of New VM to Create"
}
variable "vm_guest_os" {
  type = string
}
variable "vm_tools" {
  type = string
}
variable "vm_nic" {
  type = string
}
variable "network" {
  type = string
}
variable "vm_disk_size" {
  type = number
  default = 60000
}
variable "shutdown_command" {
  type = string
}
variable "shutdown_timeout" {
  type = string
}
variable "ssh_timeout" {
  type = string
}
variable "ssh_port" {
  type = string
}
variable "ssh_handshake" {
  type = string
}
variable "cpu_num" {
  type = number
  default = 2
}
variable "vm_ram" {
  type = number
  default = 8192
}
variable "vm_cores" {
  type = number
  default = 2
}
variable "vm_disk_adapter" {
  type = string
}
variable "http_dir" {
  type = string
}
variable "boot_wait" {
  type = string
}
// VM Connection

variable "packer_ssh_user" {
  type = string
  default = "${env("packer_ssh_user")}"
}
variable "packer_ssh_pass" {
  type = string
  default = "${env("packer_ssh_pass")}"
}
variable "vm_iso_url" {
  type = string
}
variable "vm_iso_checksum" {
  type = string
}
variable "domain" {
  type    = string
  default = ""
}
variable "headless" {
  type = bool
  default = true
}

// Driver Configuration
variable "fusion_path" {
  type = string
}

// Export Configuration
variable "output_dir" {
  type = string
}
variable "output_format" {
  type = string
}

