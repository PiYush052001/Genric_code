############################################################
# Public IP Variables
############################################################
variable "pip_mod" {
  description = "Public IP configuration map"
  type = map(object({
    pip_name          = string
    rg_name           = string
    pip_location      = string
    allocation_method = string
    tags              = optional(map(string))
  }))
}

variable "common_tags" {
  description = "Common tags applied to all PIP resources"
  type        = map(string)
}