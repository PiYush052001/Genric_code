############################################################
# Virtual Network
############################################################
resource "azurerm_virtual_network" "vnet" {
  for_each = var.vnet_dev

  name                = each.value.vnet_name
  location            = each.value.vnet_location
  resource_group_name = each.value.rg_name
  address_space       = each.value.address_space

  ##########################################################
  # Dynamic Subnets
  ##########################################################
  dynamic "subnet" {
    for_each = try(each.value.subnets, [])

    content {
      name             = subnet.value.subnet_name
      address_prefixes = [subnet.value.address_prefix]
    }
  }

  tags = merge(
    var.common_tags,
    each.value.tags != null ? each.value.tags : {}
  )
}
