output "vm_id" {
  value = azurerm_linux_virtual_machine.this.id
}

output "vm_name" {
  value = azurerm_linux_virtual_machine.this.name
}

output "private_ip" {
  value = azurerm_network_interface.this.private_ip_address
}

output "public_ip" {
  value = azurerm_public_ip.this.ip_address
}

output "nic_id" {
  value = azurerm_network_interface.this.id
}

output "nsg_id" {
  value = azurerm_network_security_group.this.id
}

output "public_ip_id" {
  value = azurerm_public_ip.this.id
}
