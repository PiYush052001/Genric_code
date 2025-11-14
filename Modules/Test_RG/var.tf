variable "resource_groups_mod" {
  description = "Map of Resource Groups to be created."
  type = map(object({
    name       = string
    location   = string
    managed_by = string
    tags       = optional(map(string))
  }))
}


variable "common_tags" {
   description = "Common tags applied to all resources."
    type = map(string)

}
