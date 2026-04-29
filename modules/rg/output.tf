output "rg_name"{
    description = "name of the created resource group"
    value = azurerm_resource_group.this.name
}

output "location"{
    description = "location of the created resource group"
    value = azurerm_resource_group.this.location
}