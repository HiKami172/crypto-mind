variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "location" {
  description = "The Azure region for the virtual network"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the network resources will be created"
  type        = string
}

variable "address_space" {
  description = "The address space for the virtual network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet_name" {
  description = "The name of the subnet for PostgreSQL"
  type        = string
}

variable "subnet_address_prefixes" {
  description = "The address prefixes for the subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "dns_zone_name" {
  description = "The name of the private DNS zone for PostgreSQL"
  type        = string
}

variable "tags" {
  description = "Tags to assign to network resources"
  type        = map(string)
  default     = {}
}
