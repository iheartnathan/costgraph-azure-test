output "planned_vm_size" {
  description = "The Azure VM SKU used in this cost estimate."
  value       = azurerm_linux_virtual_machine.this.size
}

output "planned_location" {
  description = "The Azure region used in this cost estimate."
  value       = azurerm_resource_group.this.location
}
