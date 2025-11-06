locals {
  common_tags = {
    cost_center = "cost_001_9090"
    owner       = "Lavlesh Jha"
    team_name   = "MMAI_secops"
  }
}

module "resource_groups" {

  source      = "../../Modules/Test_RG"
  child_rg    = var.parent_rg
  common_tags = local.common_tags
}

module "vnet" {
  source     = "../../Modules/Test_vnet"
  child_vnet = var.parent_vnet
}