variable "virtual_networks" {
  type = map(object({
    virtual_network_name = string
    resource_group_name  = string
    location             = string
    address_space        = list(string)
    dns_servers          = list(string)
  }))
}
