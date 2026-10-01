variable "compute_instances" {
  type = map(object({
    nsg_name                = string
    nsg_location            = string
    nsg_resource_group_name = string

    nsg_rule_name = string

    nic_name                          = string
    nic_location                      = string
    nic_resource_group_name           = string
    nic_ip_configuration_name         = string
    nic_subnet_id                     = string
    nic_public_ip_address_id          = string
    nic_private_ip_address_allocation = string

    vm_name                = string
    vm_resource_group_name = string
    vm_location            = string
    vm_size                = string
    vm_admin_username      = string
    vm_admin_password      = string

    vm_publisher = string
    vm_offer     = string
    vm_sku       = string
  }))
}
