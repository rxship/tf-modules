output "vnet_id" {
  description = "ID of the created VNet"
  value       = azurerm_virtual_network.this.id
}

output "vnet_name" {
  description = "name of the created VNet"
  value       = azurerm_virtual_network.this.name
}

output "aks_subnet_id" {
  description = "ID of the AKS subnet (needed by AKS module)"
  value       = azurerm_subnet.aks.id
}