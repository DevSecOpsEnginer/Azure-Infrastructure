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
