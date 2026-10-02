variable "postgresql_flexible_server_database" {
  type = map(object({
    postgresql_flexible_server_database_name = string
    postgresql_flexible_server_id            = string
  }))
}
