############################################################
# Network Interface Resource
############################################################
resource "azurerm_network_interface" "nic" {
  for_each = var.nic_mod

  name                = each.value.nic_name
  location            = each.value.nic_location
  resource_group_name = each.value.rg_name

  ip_configuration {
    name                          = each.value.ip_name
    subnet_id                     = data.azurerm_subnet.subnet[each.key].id
    private_ip_address_allocation = "Dynamic"
  }

  tags = merge(
    var.common_tags,
    each.value.tags != null ? each.value.tags : {}
  )
}