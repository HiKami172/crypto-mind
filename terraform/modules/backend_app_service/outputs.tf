output "app_service_plan_id" {
  value       = azurerm_app_service_plan.cryptomind_backend_plan.id
  description = "The ID of the App Service Plan"
}

output "app_name" {
  value       = azurerm_linux_web_app.cryptomind_backend_app.name
  description = "The name of the backend App Service"
}

output "app_url" {
  value       = azurerm_linux_web_app.cryptomind_backend_app.default_hostname
  description = "The URL of the backend App Service"
}

