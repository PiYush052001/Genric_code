variable "nic_mod" {
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

variable "common_tags" {
  description = "Common tags applied to all NICs"
  type        = map(string)
}