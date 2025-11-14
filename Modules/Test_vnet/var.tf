############################################################
# Virtual Network Variables
############################################################
variable "vnet_dev" {
  description = "Virtual Network configuration map with optional subnets"
  type = map(object({
    vnet_name     = string
    vnet_location = string
    rg_name       = string
    address_space = list(string)

    subnets = optional(list(object({
      subnet_name    = string
      address_prefix = string
    })))

    tags = optional(map(string))
  }))
}

variable "common_tags" {
  description = "Common tags applied to all VNet resources"
  type        = map(string)
}
