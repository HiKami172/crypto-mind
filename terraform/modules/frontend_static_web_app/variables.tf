variable "app_name" {
  description = "The name of the Static Web App"
  type        = string
}

variable "location" {
  description = "The Azure region for the Static Web App"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the Static Web App will be created"
  type        = string
}

variable "sku" {
  description = "The SKU for the Static Web App (Free or Standard)"
  type        = string
  default     = "Free"
}

variable "github_repo_url" {
  description = "The GitHub repository URL for the frontend code"
  type        = string
}

variable "branch" {
  description = "The branch to deploy from the GitHub repository"
  type        = string
  default     = "main"
}

variable "app_location" {
  description = "The location of the app code within the repository"
  type        = string
  default     = "frontend"
}

variable "api_location" {
  description = "The location of the API code within the repository"
  type        = string
  default     = ""
}

variable "output_location" {
  description = "The build output directory for the app"
  type        = string
  default     = "build"
}

variable "custom_domain" {
  description = "The custom domain to assign to the Static Web App (optional)"
  type        = string
  default     = null
}

variable "tags" {
  description = "Tags to assign to the Static Web App"
  type        = map(string)
  default     = {}
}
