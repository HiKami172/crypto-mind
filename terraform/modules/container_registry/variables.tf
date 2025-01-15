variable "acr_name" {
  description = "The name of the Azure Container Registry"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the ACR will be created"
  type        = string
}

variable "location" {
  description = "The Azure region for the ACR"
  type        = string
}

variable "sku" {
  description = "The SKU of the Azure Container Registry (e.g., Basic, Standard, Premium)"
  type        = string
  default     = "Basic"
}

variable "admin_enabled" {
  description = "Whether admin access should be enabled for the ACR"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags to assign to the ACR"
  type        = map(string)
  default     = {}
}

variable "key_vault_id" {
  description = "The ID of the Azure Key Vault to store ACR credentials"
  type        = string
  default     = null
}
