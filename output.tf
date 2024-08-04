output "vnet_id" {
  value       = azurerm_virtual_network.vnet.id
  description = "The ID of the virtual network."
}

output "app_subnet_ids" {
  value       = { for s in azurerm_subnet.app_subnets : s.name => s.id }
  description = "The IDs of public subnets in the virtual network."
}

output "db_subnet_ids" {
  value       = { for s in azurerm_subnet.db_subnets : s.name => s.id }
  description = "The IDs of private subnets in the virtual network."
}

output "nsg_id" {
  value       = azurerm_network_security_group.nsg.id
  description = "The ID of the network security group."
}
