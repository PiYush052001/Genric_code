############################################################
# Virtual Machine Variables
############################################################
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

    tags = optional(map(string))
  }))
}

variable "common_tags" {
  description = "Common tags applied to all VM resources"
  type        = map(string)
}
