variable "resource_groups" {
  type = map(object({
    name     = string
    location = string
  }))
}

variable "storage_accounts" {
  type = map(object({
    storage_account_name     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  }))
}

variable "virtual_networks" {
  type = map(object({
    virtual_network_name = string
    resource_group_name  = string
    location             = string
    address_space        = list(string)
    dns_servers          = list(string)
  }))
}

variable "subnets" {
  type = map(object({
    subnet_name          = string
    resource_group_name  = string
    virtual_network_name = string
    address_prefixes     = list(string)
  }))
}

variable "compute_instances" {
  type = map(object({
    nic_name                          = string
    nic_location                      = string
    nic_resource_group_name           = string
    nic_ip_configuration_name         = string
    nic_subnet_id                     = string
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
