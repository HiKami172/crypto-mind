variable "app_name" {
  description = "The name of the backend app service"
  type        = string
}

variable "location" {
  description = "The Azure region for the backend app service"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the backend app will be created"
  type        = string
}

variable "app_service_plan_sku" {
  description = "The SKU configuration for the App Service Plan"
  type = object({
    tier = string
    size = string
  })
  default = {
    tier = "B1"
    size = "B1"
  }
}

variable "docker_registry_url" {
  description = "The URL of the Docker registry (e.g., ACR login server)"
  type        = string
}

variable "docker_image_name" {
  description = "The name of the Docker image for the backend"
  type        = string
}

variable "docker_image_tag" {
  description = "The Docker image tag to deploy"
  type        = string
  default     = "latest"
}

variable "database_connection_string" {
  description = "The connection string for the backend to connect to the database"
  type        = string
}

variable "app_command_line" {
  description = "Custom startup command for the container"
  type        = string
  default     = null
}

variable "app_settings" {
  description = "Additional app settings for the backend app service"
  type        = map(string)
  default     = {}
}

variable "tags" {
  description = "Tags to assign to the backend app service"
  type        = map(string)
  default     = {}
}
