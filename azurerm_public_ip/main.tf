resource "azurerm_public_ip" "pubip" {
  for_each            = var.publicIp
  name                = each.value.public_ip_name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  allocation_method   = "Static"
}
