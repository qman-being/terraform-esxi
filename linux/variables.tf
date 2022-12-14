## ESXI Host Variables

variable "esxi_hostname" {
    type = string
    description = "hostname for ESXI host"
}

variable "esxi_hostport" {
    type = string
    description = "SSH port for ESXI host"
}

variable "esxi_hostssl" {
    type = string
    description = "SSL port for ESXI host"
}

variable "esxi_username" {
    type = string
    description = "username for ESXI host"
}

variable "esxi_password" {
    type = string
    description = "password for ESXI host"
}

## ESXI Guest Variables 

variable "guest_name" {
    type = string
    description = "name for guest VM"
}

variable "disk_store" {
    type = string
    description = "Data Store for guest VM"
}

variable "clone_from_vm" {
    type = string
    description = "Template to clone for new guest VM"
}

variable "virtual_network" {
    type = string
    description = "Virtual Network for guest VM"
}

variable "nic_type" {
    type = string
    description = "NIC type for guest VM"
}


