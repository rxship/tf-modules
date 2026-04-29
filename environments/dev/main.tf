module "rg" {
  source   = "../../modules/rg"
  rg_name  = var.rg_name
  location = var.location
}

module "vnet" {
  source    = "../../modules/vnet"
  vnet_name = var.vnet_name
  location  = var.location
  rg_name   = module.rg.rg_name
}

module "aks" {
  source             = "../../modules/aks"
  cluster_name       = var.cluster_name
  location           = var.location
  rg_name            = module.rg.rg_name
  dns_prefix         = var.dns_prefix
  kubernetes_version = var.kubernetes_version
  node_count         = var.node_count
  subnet_id          = module.vnet.aks_subnet_id
}