output "static_web_app_id" {
  value       = azurerm_static_site.cryptomind_frontend.id
  description = "The ID of the Static Web App"
}

output "static_web_app_name" {
  value       = azurerm_static_site.cryptomind_frontend.name
  description = "The name of the Static Web App"
}

output "static_web_app_url" {
  value       = azurerm_static_site.cryptomind_frontend.default_host_name
  description = "The default URL of the Static Web App"
}

output "static_web_app_identity" {
  value       = azurerm_static_site.cryptomind_frontend.identity[0].principal_id
  description = "The Principal ID of the Static Web App's managed identity"
}
