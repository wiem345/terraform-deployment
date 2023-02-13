terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

locals {
  zones = [
    "privatelink.monitor.azure.com",
    "privatelink.oms.opinsights.azure.com", 
    "privatelink.ods.opinsights.azure.com", 
    "privatelink.agentsvc.azure-automation.net", 
    "privatelink.blob.core.windows.net"
          ]
}


module "law" {
  source = "github.com/sajipoochira/TerraformModules.git/terraform/Modules/LAW/"

  subscription_id = var.subscription_id

  tags = var.tags

  resource_group_name = var.resource_group_name

  vnet_name = var.vnet_name

  subnetname = var.subnetname

  virtual_machine = var.virtual_machine

  os_image = var.os_image


  vnet_rg_name = var.vnet_rg_name

  lbname = var.lbname

  fipname = var.fipname

  backendName = var.backendName

  ruleName = var.ruleName

  law_name = var.law_name

  law_subnetname = var.law_subnetname

  zones = local.zones



}