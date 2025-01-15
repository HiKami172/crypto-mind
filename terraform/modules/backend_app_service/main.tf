# App Service Plan
resource "azurerm_app_service_plan" "cryptomind_backend_plan" {
  name                = "${var.app_name}-plan"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku {
    tier = var.app_service_plan_sku.tier
    size = var.app_service_plan_sku.size
  }

  reserved = true
}

# Web App (Linux)
resource "azurerm_linux_web_app" "cryptomind_backend_app" {
  name                = var.app_name
  location            = var.location
  resource_group_name = var.resource_group_name
  service_plan_id     = azurerm_app_service_plan.cryptomind_backend_plan.id

  site_config {
    app_command_line = var.app_command_line

    # Docker configuration
    linux_fx_version = "DOCKER|${var.docker_registry_url}/${var.docker_image_name}:${var.docker_image_tag}"
  }

  app_settings = merge(
    var.app_settings,
    {
      DATABASE_CONNECTION_STRING = var.database_connection_string
    }
  )

  tags = var.tags
}
