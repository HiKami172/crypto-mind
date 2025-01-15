# Virtual Network
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space

  tags = var.tags
}

# Subnet for PostgreSQL
resource "azurerm_subnet" "subnet" {
  name                      = var.subnet_name
  resource_group_name       = var.resource_group_name
  virtual_network_name      = azurerm_virtual_network.vnet.name
  address_prefixes          = var.subnet_address_prefixes

  delegation {
    name = "postgresql-delegation"
    service_delegation {
      name = "Microsoft.DBforPostgreSQL/flexibleServers"
    }
  }
}

# Private DNS Zone
resource "azurerm_private_dns_zone" "dns_zone" {
  name                     = var.dns_zone_name
  resource_group_name      = var.resource_group_name

  tags = var.tags
}

# Virtual Network Link to Private DNS
resource "azurerm_private_dns_zone_virtual_network_link" "vnet_link" {
  name                    = "${var.vnet_name}-dns-link"
  resource_group_name     = var.resource_group_name
  private_dns_zone_name   = azurerm_private_dns_zone.dns_zone.name
  virtual_network_id      = azurerm_virtual_network.vnet.id
  registration_enabled    = false
}
