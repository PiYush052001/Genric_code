
resource "azurerm_resource_group" "rg" {
    for_each = var.child_rg

  name     = each.value.name
  location = each.value.location
  managed_by = each.value.managed_by
  
  tags = merge(
    var.common_tags,
    each.value.tags != null ? each.value.tags : {}
  )
  
}
  