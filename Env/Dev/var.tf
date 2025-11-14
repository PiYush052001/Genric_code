###########################################################
# Subscription
###########################################################
variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

###########################################################
# Resource Groups
###########################################################
variable "resource_groups_dev" {
  description = "Map of Resource Groups to be created"
  type = map(object({
    name       = string
    location   = string
    managed_by = optional(string)
    tags       = optional(map(string))
  }))
}

###########################################################
# Virtual Network + Subnets
###########################################################
variable "vnet_dev" {
  description = "Virtual Network configuration map"
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

###########################################################
# Network Interface
###########################################################
variable "nic_dev" {
  description = "Network Interface configuration map"
  type = map(object({
    nic_name     = string
    nic_location = string
    rg_name      = string
    subnet_name  = string
    vnet_name    = string
    ip_name      = string
    tags         = optional(map(string))
  }))
}

###########################################################
# Public IP
###########################################################
variable "pip_dev" {
  description = "Public IP configuration map"
  type = map(object({
    pip_name          = string
    rg_name           = string
    pip_location      = string
    allocation_method = string
    tags              = optional(map(string))
  }))
}

###########################################################
# Virtual Machine
###########################################################
variable "vm_dev" {
  description = "Virtual Machine configuration map"
  type = map(object({
    vm_name        = string
    rg_name        = string
    location       = string
    size           = string
    admin_username = string
    admin_password = string

    nic_name              = string
    network_interface_ids = list(string)

    os_disk = object({
      caching              = string
      storage_account_type = string
    })

    image = object({
      publisher = string
      offer     = string
      sku       = string
      version   = string
    })
  }))
}
