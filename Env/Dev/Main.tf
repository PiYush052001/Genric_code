#############################################
# Local Common Tags (CAF Standard)
#############################################

locals {
  common_tags = {
    cost_center = "cost_001_9090"
    owner       = "Lavlesh Jha"
    team_name   = "MMAI_secops"
  }
}
#############################################
# Resource Group Module
#############################################
module "resource_groups_dev" {

  source              = "../../Modules/Test_RG"
  resource_groups_mod = var.resource_groups_dev
  common_tags         = local.common_tags
}
#############################################
# Virtual Network Module
#############################################
module "vnet_dev" {
  depends_on = [ module.resource_groups_dev ]
  source      = "../../Modules/Test_vnet"
  vnet_dev    = var.vnet_dev
  common_tags = local.common_tags
}
#############################################
# Network Interface Module
#############################################
module "nic_dev" {
  depends_on  = [module.resource_groups_dev]
  source      = "../../Modules/Test_NIC"
  nic_mod     = var.nic_dev
  common_tags = local.common_tags
}
#############################################
# Public IP Module
#############################################
module "pip_dev" {
  depends_on  = [module.resource_groups_dev]
  source      = "../../Modules/Test_PIP"
  pip_mod     = var.pip_dev
  common_tags = local.common_tags

}
#############################################
# Virtual Machine Module
#############################################

module "vm_dev" {
  depends_on  = [module.resource_groups_dev,module.nic_dev]
  source      = "../../Modules/Test_VM"
  vm_dev      = var.vm_dev
  common_tags = local.common_tags
}
