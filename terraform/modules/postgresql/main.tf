resource "azurerm_postgresql_flexible_server" "postgresql" {
  name                   = var.db_name
  location               = var.location
  resource_group_name    = var.resource_group_name
  administrator_login    = var.admin_username
  administrator_password = var.admin_password
  version                = var.postgresql_version
  sku_name               = var.sku_name
  storage_mb             = var.storage_mb
  backup_retention_days  = var.backup_retention_days
  geo_redundant_backup   = var.geo_redundant_backup
  public_network_access  = var.public_network_access
  zone                   = var.availability_zone

  delegated_subnet_id = var.delegated_subnet_id
  private_dns_zone_id = var.private_dns_zone_id

  tags = var.tags
}

resource "azurerm_postgresql_flexible_server_firewall_rule" "allow_access" {
  count                = var.public_network_access == "Enabled" ? length(var.firewall_rules) : 0
  name                 = element(var.firewall_rules[count.index].name, count.index)
  flexible_server_name = azurerm_postgresql_flexible_server.postgresql.name
  resource_group_name  = var.resource_group_name
  start_ip_address     = element(var.firewall_rules[count.index].start_ip, count.index)
  end_ip_address       = element(var.firewall_rules[count.index].end_ip, count.index)
  server_id            = azurerm_postgresql_flexible_server.postgresql.id
}
