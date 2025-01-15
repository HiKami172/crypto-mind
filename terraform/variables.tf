# Resource Group
variable "resource_group_name" {
  description = "The name of the resource group for all resources"
  type        = string
}

variable "location" {
  description = "The Azure region to deploy resources to"
  type        = string
  default     = "East US"
}

# Container Registry
variable "acr_name" {
  description = "The name of the Azure Container Registry"
  type        = string
}

# Backend
variable "backend_app_name" {
  description = "The name of the backend app service"
  type        = string
}

variable "backend_sku" {
  description = "The SKU for the backend App Service Plan"
  type        = string
  default     = "B1"
}

variable "docker_image_name" {
  description = "The Docker image name"
  type        = string
}

variable "backend_image_tag" {
  description = "The Docker image tag for the backend"
  type        = string
  default     = "latest"
}

# Frontend
variable "frontend_repo_url" {
  description = "The GitHub URL for the frontend repository"
  type        = string
}

variable "frontend_branch" {
  description = "The branch of the frontend repository"
  type        = string
}

variable "frontend_app_name" {
  description = "The name of the frontend app service"
  type        = string
}

variable "github_pat" {
  description = "The GitHub Personal Access Token for accessing private repositories"
  type        = string
  sensitive   = true
}


# PostgreSQL

variable "postgresql_admin_username" {
  description = "The PostgreSQL admin username"
  type        = string
}

variable "postgresql_admin_password" {
  description = "The PostgreSQL admin password"
  type        = string
}

variable "postgresql_db_name" {
  description = "The name of the PostgreSQL database"
  type        = string
}

# Network
variable "dns_zone_name" {
  description = "The name of the private DNS zone"
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
}

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
}

