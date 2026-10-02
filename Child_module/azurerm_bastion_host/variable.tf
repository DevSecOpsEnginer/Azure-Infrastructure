variable "bastion_host" {
  type = map(object({
    bastion_name                 = string
    bastion_location             = string
    bastion_resource_group_name  = string
    bastion_subnet_id            = string
    bastion_public_ip_address_id = string
  }))
}
