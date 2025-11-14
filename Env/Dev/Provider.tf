#######################################################
# Terraform & Provider Configuration
#######################################################
terraform {
  required_version = ">= 1.5.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.50.0"
    }
  }
}
#######################################################
# Azure Provider
#######################################################
provider "azurerm" {
  features {}

  subscription_id = var.subscription_id

}