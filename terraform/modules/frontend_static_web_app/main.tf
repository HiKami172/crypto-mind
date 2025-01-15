resource "azurerm_static_site" "cryptomind_frontend" {
  name                = var.app_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku

  repository_url      = var.github_repo_url
  branch              = var.branch

  app_location        = var.app_location
  api_location        = var.api_location
  output_location     = var.output_location

  identity {
    type = "SystemAssigned"
  }

  tags = var.tags
}

# Optional: Assign custom domain (if applicable)
resource "azurerm_static_site_custom_domain" "cryptomind_frontend_custom_domain" {
  count              = var.custom_domain == null ? 0 : 1
  static_site_id     = azurerm_static_site.cryptomind_frontend.id
  domain_name        = var.custom_domain
}
