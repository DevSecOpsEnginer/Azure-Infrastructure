resource "azurerm_bastion_host" "bastion" {
  for_each            = var.bastion_host
  name                = each.value.bastion_name
  location            = each.value.bastion_location
  resource_group_name = each.value.bastion_resource_group_name

  ip_configuration {
    name                 = "configuration"
    subnet_id            = each.value.bastion_subnet_id
    public_ip_address_id = each.value.bastion_public_ip_address_id
  }
}
