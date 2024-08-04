variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "address_space" {
  description = "The address space of the VNet."
  type        = list(string)
}

variable "location" {
  description = "The location/region where the virtual network is created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "app_subnets" {
  description = "A list of public subnets in the VNet."
  type = list(object({
    name               = string
    address_prefixes   = list(string)
    service_endpoints  = list(string)
  }))
}

variable "db_subnets" {
  description = "A list of private subnets in the VNet."
  type = list(object({
    name               = string
    address_prefixes   = list(string)
    service_endpoints  = list(string)
  }))
}
