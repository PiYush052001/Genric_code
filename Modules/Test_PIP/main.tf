############################################################
# Public IP Resource
############################################################
resource "azurerm_public_ip" "pip" {
  for_each = var.pip_mod

  name                = each.value.pip_name
  resource_group_name = each.value.rg_name
  location            = each.value.pip_location
  allocation_method   = each.value.allocation_method
   sku = "Standard" 
 

  tags = merge(
    var.common_tags,
    each.value.tags != null ? each.value.tags : {}
  )
}