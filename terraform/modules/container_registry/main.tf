resource "azurerm_container_registry" "cryptomind_acr" {
  name                = var.acr_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.sku
  admin_enabled       = var.admin_enabled

  tags = var.tags
}

# Optional: Key Vault integration for storing ACR credentials
resource "azurerm_key_vault_secret" "cryptomind_acr_admin_password" {
  count = var.admin_enabled ? 1 : 0

  name         = "${azurerm_container_registry.cryptomind_acr.name}-admin-password"
  value        = azurerm_container_registry.cryptomind_acr.admin_password
  key_vault_id = var.key_vault_id
}
