variable "child_rg" {
  type = map(object({
    name       = string
    location   = string
    managed_by = string
    tags       = optional(map(string))
  }))
}


variable "common_tags" {
    type = map(string)

}
