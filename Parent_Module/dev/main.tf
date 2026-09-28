module "resource_groups" {
  source          = "../../azurerm_resource_group"
  resource_groups = var.resource_groups
}

module "storage_accounts" {
  depends_on       = [module.resource_groups]
  source           = "../../azurerm_storage_account"
  storage_accounts = var.storage_accounts
}

module "virtual_networks" {
  depends_on       = [module.resource_groups]
  source           = "../../azurerm_virtual_network"
  virtual_networks = var.virtual_networks
}

module "subnets" {
  depends_on = [module.virtual_networks]
  source     = "../../azurerm_subnet"
  subnets    = var.subnets
}

