output "vnet_id" {
  value       = azurerm_virtual_network.vnet.id
  description = "The ID of the virtual network"
}

output "subnet_id" {
  value       = azurerm_subnet.subnet.id
  description = "The ID of the subnet for PostgreSQL"
}

output "dns_zone_id" {
  value       = azurerm_private_dns_zone.dns_zone.id
  description = "The ID of the private DNS zone"
}

output "vnet_address_space" {
  value       = azurerm_virtual_network.vnet.address_space
  description = "The address space of the virtual network"
}

output "database_subnet_id" {
  value       = azurerm_subnet.subnet.id
  description = "The ID of the subnet used by PostgreSQL"
}