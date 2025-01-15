output "name" {
  value       = azurerm_container_registry.cryptomind_acr.name
  description = "The name of the Azure Container Registry"
}

output "login_server" {
  value       = azurerm_container_registry.cryptomind_acr.login_server
  description = "The login server URL for the Azure Container Registry"
}

output "admin_username" {
  value       = azurerm_container_registry.cryptomind_acr.admin_username
  description = "The admin username for the Azure Container Registry"
  condition   = var.admin_enabled
}

output "admin_password" {
  value       = azurerm_container_registry.cryptomind_acr.admin_password
  description = "The admin password for the Azure Container Registry"
  condition   = var.admin_enabled
}
