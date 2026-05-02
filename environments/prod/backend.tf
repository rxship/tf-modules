terraform {
  backend "azurerm" {
    resource_group_name  = "rg-tfstate-prod"
    storage_account_name = "tfstateprodrjp"
    container_name       = "tfstate"
    key                  = "prod.terraform.tfstate"
  }
}