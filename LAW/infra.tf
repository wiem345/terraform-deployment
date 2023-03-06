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


terraform {
  backend "azurerm" {
    storage_account_name = "stcratfstatebakend"
    container_name       = "tfstate"
    key                  = "law.hub.terraform.tfstate"

    # rather than defining this inline, the Access Key can also be sourced
    # from an Environment Variable - more information is available below.
    access_key = "m8LmjyY6gaHWm7ImQfYvXBlV6Syqfh/oRMOZWfhWGgdLbiwIxtLPElDa+ICfXvpYfuso1r0Eq9NZ+ASttG1Kvw=="
  }
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
  source = "../.data/Modules/files/Modules/LAW/"

  subscription_id = "bc09682f-aa21-4023-a709-ae1a5ed024db"

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