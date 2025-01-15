provider "azurerm" {
  features {}
}

# Resource Group
resource "azurerm_resource_group" "cryptomind_rg" {
  name     = var.resource_group_name
  location = var.location
}

# Container Registry Module
module "container_registry" {
  source              = "./modules/container_registry"
  resource_group_name = azurerm_resource_group.cryptomind_rg.name
  location            = azurerm_resource_group.cryptomind_rg.location
  acr_name            = var.acr_name
}

# PostgreSQL Module
module "postgresql" {
  source              = "./modules/postgresql"
  resource_group_name = azurerm_resource_group.cryptomind_rg.name
  location            = azurerm_resource_group.cryptomind_rg.location
  vnet_subnet_id      = module.network.database_subnet_id
  admin_password      = var.postgresql_admin_password
  admin_username      = var.postgresql_admin_username
  db_name             = var.postgresql_db_name
}

# Network Module
module "network" {
  source              = "./modules/network"
  resource_group_name = azurerm_resource_group.cryptomind_rg.name
  location            = azurerm_resource_group.cryptomind_rg.location
  dns_zone_name       = var.dns_zone_name
  subnet_name         = var.subnet_name
  vnet_name           = var.vnet_name
}

# Backend App Service Module
module "backend_app_service" {
  source                   = "./modules/backend_app_service"
  resource_group_name      = azurerm_resource_group.cryptomind_rg.name
  location                 = azurerm_resource_group.cryptomind_rg.location
  app_name = var.backend_app_name
  app_service_plan_sku     = var.backend_sku
  database_connection_string = module.postgresql.connection_string
  docker_registry_url = "${module.container_registry.name}.azurecr.io"
  docker_image_name = var.docker_image_name
}

# Frontend Static Web App Module
module "frontend_static_web_app" {
  source              = "./modules/frontend_static_web_app"
  resource_group_name = azurerm_resource_group.cryptomind_rg.name
  location            = azurerm_resource_group.cryptomind_rg.location
  app_name            = var.frontend_app_name
  github_repo_url     = var.frontend_repo_url
  branch              = var.frontend_branch
}
