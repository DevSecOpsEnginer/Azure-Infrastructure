module "resource_groups" {
  source          = "../../azurerm_resource_group"
  resource_groups = var.resource_groups
}

# module "storage_accounts" {
#   depends_on       = [module.resource_groups]
#   source           = "../../azurerm_storage_account"
#   storage_accounts = var.storage_accounts
# }

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

module "public_ip" {
  depends_on = [module.resource_groups]
  source     = "../../azurerm_public_ip"
  publicIp   = var.publicIp
}

module "compute_instances" {
  depends_on        = [module.subnets, module.public_ip]
  source            = "../../azurerm_virtual_machine"
  compute_instances = var.compute_instances
}

module "postgresql_flexible_server" {
  depends_on                 = [module.resource_groups]
  source                     = "../../azuerrm_database_server"
  postgresql_flexible_server = var.postgresql_flexible_server
}

module "postgresql_flexible_server_database" {
  depends_on                          = [module.postgresql_flexible_server]
  source                              = "../../azurerm_database"
  postgresql_flexible_server_database = var.postgresql_flexible_server_database
}

module "bastion_host" {
  depends_on   = [module.subnets, module.public_ip]
  source       = "../../azurerm_bastion_host"
  bastion_host = var.bastion_host
}
