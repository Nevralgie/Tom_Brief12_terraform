output "resource_group_name" {
  value = data.azurerm_resource_group.rg.name
}

output "Region" {
  value = data.azurerm_resource_group.rg.location
}

output "azurerm_public_ip" {
  value = azurerm_public_ip.test.ip_address 
}

output "first_VM" {
  value = azurerm_virtual_machine.test[0].name
}

output "second_VM" {
  value = azurerm_virtual_machine.test[1].name
}

output "private_ip_first_VM" {
  value = azurerm_network_interface.test[0].private_ip_address
}

output "private_ip_second_VM" {
  value = azurerm_network_interface.test[1].private_ip_address
}
