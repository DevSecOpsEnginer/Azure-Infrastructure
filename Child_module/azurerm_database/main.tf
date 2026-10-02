resource "azurerm_postgresql_flexible_server_database" "db" {
  for_each  = var.postgresql_flexible_server_database
  name      = each.value.postgresql_flexible_server_database_name
  server_id = each.value.postgresql_flexible_server_id
  collation = "en_US.utf8"
  charset   = "UTF8"
}
