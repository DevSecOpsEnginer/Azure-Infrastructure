resource "azurerm_network_security_group" "nsg" {
  for_each            = var.compute_instances
  name                = each.value.nsg_name
  location            = each.value.nsg_location
  resource_group_name = each.value.nsg_resource_group_name

  security_rule {
    name                       = each.value.nsg_rule_name
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

resource "azurerm_network_interface" "nic" {
  for_each            = var.compute_instances
  name                = each.value.nic_name
  location            = each.value.nic_location
  resource_group_name = each.value.nic_resource_group_name

  ip_configuration {
    name                          = each.value.nic_ip_configuration_name
    subnet_id                     = each.value.nic_subnet_id
    private_ip_address_allocation = each.value.nic_private_ip_address_allocation
  }
}

resource "azurerm_linux_virtual_machine" "vm" {
  for_each                        = var.compute_instances
  name                            = each.value.vm_name
  resource_group_name             = each.value.vm_resource_group_name
  location                        = each.value.vm_location
  size                            = each.value.vm_size
  disable_password_authentication = false
  admin_username                  = each.value.vm_admin_username
  admin_password                  = each.value.vm_admin_password
  network_interface_ids = [
    azurerm_network_interface.nic[each.key].id,
  ]

  # admin_ssh_key {
  #   username   = "adminuser"
  #   public_key = file("~/.ssh/id_rsa.pub")
  # }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = each.value.vm_publisher
    offer     = each.value.vm_offer
    sku       = each.value.vm_sku
    version   = "latest"
  }
}
