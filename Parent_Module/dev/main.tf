module "resource_groups" {
  source          = "../../azurerm_resource_group"
  resource_groups = var.resource_groups
}
