
resource "azurerm_resource_group" "rg" {
    for_each = var.resource_groups_mod

  name     = each.value.name
  location = each.value.location
  managed_by = each.value.managed_by
  
  tags = merge(
    var.common_tags,
    each.value.tags != null ? each.value.tags : {}
  )
  
}
  


#   tags = merge(
#   local.common_tags,
#   each.value.tags != null ? {
#     cost_center = lookup(each.value.tags, "cost_center", null)
#     owner       = lookup(each.value.tags, "owner", null)
#     team_name   = lookup(each.value.tags, "team_name", null)
#   } : {}
# )
#   tags = merge(
#   local.common_tags,
#   each.value.tags != null ? {
#     cost_center = lookup(each.value.tags, "cost_center", null)
#     owner       = lookup(each.value.tags, "owner", null)
#     team_name   = lookup(each.value.tags, "team_name", null)
#   } : {}
# )