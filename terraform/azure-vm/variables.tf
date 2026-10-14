variable "location" {
  description = "Azure region used for the test resources."
  type        = string
  default     = "uksouth"
}

variable "resource_group_name" {
  description = "Name for the test resource group."
  type        = string
  default     = "rg-costgraph-plan-test"
}

variable "vm_name" {
  description = "Name for the test virtual machine."
  type        = string
  default     = "vm-costgraph-b2s"
}

variable "vm_size" {
  description = "Azure VM SKU to estimate."
  type        = string
  default     = "Standard_D2s_v5"
}

variable "admin_username" {
  description = "Admin username for the planned Linux VM."
  type        = string
  default     = "azureuser"
}

variable "ssh_public_key" {
  description = "SSH public key used only to make the VM plan valid."
  type        = string
  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBIp0f/077q4js8BD2a17Uyzh9nDuaNaopxwHfPvuHk3 costgraph-test"
}
