output "db_name" {
  value       = azurerm_postgresql_flexible_server.postgresql.name
  description = "The name of the PostgreSQL server"
}

output "admin_username" {
  value       = azurerm_postgresql_flexible_server.postgresql.administrator_login
  description = "The admin username for the PostgreSQL server"
}

output "host" {
  value       = azurerm_postgresql_flexible_server.postgresql.fqdn
  description = "The fully qualified domain name of the PostgreSQL server"
}

output "connection_string" {
  value = "postgresql://${azurerm_postgresql_flexible_server.postgresql.administrator_login}:${var.admin_password}@${azurerm_postgresql_flexible_server.postgresql.fqdn}:5432/${var.db_name}"
  description = "The connection string to connect to the PostgreSQL server"
}
