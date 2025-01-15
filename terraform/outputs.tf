output "resource_group_name" {
  value = azurerm_resource_group.cryptomind_rg.name
  description = "The name of the resource group"
}

output "container_registry_name" {
  value = module.container_registry.name
  description = "The name of the Azure Container Registry"
}

output "database_connection_string" {
  value = module.postgresql.connection_string
  description = "The connection string for the PostgreSQL database"
}

output "backend_app_service_url" {
  value = module.backend_app_service.app_url
  description = "The URL of the backend App Service"
}

output "frontend_static_web_app_url" {
  value = module.frontend_static_web_app.static_web_app_url
  description = "The URL of the frontend Static Web App"
}
