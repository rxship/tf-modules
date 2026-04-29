variable "vnet_name" {
  description = "name of the virtual network"
  type        = string
}

variable "location" {
  description = "azure region for the VNet"
  type        = string
}

variable "rg_name" {
  description = "resource group name where the VNet will be created"
  type        = string
}

variable "address_space" {
  description = "address space (CIDR) for the VNet"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "name of the subnet for AKS nodes"
  type        = string
  default     = "aks-subnet"
}

variable "subnet_address_prefix" {
  description = "address prefix (CIDR) for the AKS subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}