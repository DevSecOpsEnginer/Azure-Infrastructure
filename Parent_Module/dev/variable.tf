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

variable "bastion_host" {
  type = map(object({
    bastion_name                 = string
    bastion_location             = string
    bastion_resource_group_name  = string
    bastion_subnet_id            = string
    bastion_public_ip_address_id = string
  }))
}

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

variable "publicIp" {
  type = map(object({
    public_ip_name      = string
    resource_group_name = string
    location            = string
  }))
}

variable "postgresql_flexible_server" {
  type = map(object({
    postgresql_flexible_server_name = string
    resource_group_name             = string
    location                        = string
    administrator_login             = string
    administrator_password          = string
  }))
}

variable "postgresql_flexible_server_database" {
  type = map(object({
    postgresql_flexible_server_database_name = string
    postgresql_flexible_server_id            = string
  }))
}
