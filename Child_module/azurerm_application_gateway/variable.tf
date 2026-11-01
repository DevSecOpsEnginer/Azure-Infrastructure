variable "appgateway" {
  type = map(object({
    name     = string
    rg_name  = string
    location = string

    subnet_name = string
    vnet_name   = string

    public_ip_name = string
  }))
}
