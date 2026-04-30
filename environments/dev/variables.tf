variable "subscription_id" {
  description = "Azure subscription ID"
  type        = string
}

variable "location" {
  description = "Azure region for all dev resources"
  type        = string
}

variable "rg_name" {
  description = "Name of the resource group for the dev environment"
  type        = string
}

variable "vnet_name" {
  description = "Name of the VNet"
  type        = string
}

variable "cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS API server"
  type        = string
}

variable "kubernetes_version" {
  description = "Kubernetes version for AKS"
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the AKS default node pool"
  type        = number
  default     = 1
}

variable "vnet_address_space" {
  description = "Address space (CIDR list) for the VNet"
  type        = list(string)
}

variable "aks_subnet_address_prefix" {
  description = "Address prefix (CIDR list) for the AKS subnet"
  type        = list(string)
}