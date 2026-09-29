variable "postgresql_flexible_server" {
  type = map(object({
    postgresql_flexible_server_name = string
    resource_group_name             = string
    location                        = string
    administrator_login             = string
    administrator_password          = string
  }))
}
