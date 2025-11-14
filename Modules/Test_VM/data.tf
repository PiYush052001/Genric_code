############################################################
# Data Lookup - Existing Network Interface
############################################################
data "azurerm_network_interface" "nic" {
  for_each = var.vm_dev

  name                = each.value.nic_name
  resource_group_name = each.value.rg_name
}