variable "parent_rg" {
  type = map(object({
    name       = string
    location   = string
    managed_by = string
    tags       = optional(map(string))
  }))
}


variable "parent_vnet" {
  type = map(object({

    vnet_name     = string
    vent_location = string
    rg_name       = string
    address_space = list(string)
  }))

}


