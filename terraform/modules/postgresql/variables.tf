variable "db_name" {
  description = "The name of the PostgreSQL server"
  type        = string
}

variable "location" {
  description = "The Azure region for the PostgreSQL server"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the PostgreSQL server will be created"
  type        = string
}

variable "admin_username" {
  description = "The admin username for the PostgreSQL server"
  type        = string
}

variable "admin_password" {
  description = "The admin password for the PostgreSQL server"
  type        = string
}

variable "postgresql_version" {
  description = "The PostgreSQL version (e.g., 13 or 14)"
  type        = string
  default     = "14"
}

variable "sku_name" {
  description = "The SKU name for the PostgreSQL server (e.g., B_Standard_B1ms)"
  type        = string
  default     = "Standard_B1ms"
}

variable "storage_mb" {
  description = "The maximum storage in MB for the server"
  type        = number
  default     = 32768
}

variable "backup_retention_days" {
  description = "The number of days to retain backups"
  type        = number
  default     = 7
}

variable "geo_redundant_backup" {
  description = "Enable or disable geo-redundant backups ('Enabled' or 'Disabled')"
  type        = string
  default     = "Disabled"
}

variable "public_network_access" {
  description = "Enable or disable public network access ('Enabled' or 'Disabled')"
  type        = string
  default     = "Disabled"
}

variable "firewall_rules" {
  description = "List of firewall rules to allow access. Each rule is an object with `name`, `start_ip`, and `end_ip`."
  type = list(
    object({
      name     = string
      start_ip = string
      end_ip   = string
    })
  )
  default = []
}

variable "delegated_subnet_id" {
  description = "The ID of the delegated subnet for the PostgreSQL server"
  type        = string
  default     = null
}

variable "private_dns_zone_id" {
  description = "The ID of the private DNS zone for the PostgreSQL server"
  type        = string
  default     = null
}

variable "availability_zone" {
  description = "The availability zone where the PostgreSQL server will be deployed"
  type        = string
  default     = null
}

variable "tags" {
  description = "Tags to assign to the PostgreSQL server"
  type        = map(string)
  default     = {}
}
