terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0.0"
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
    key                  = "bastion.hub.terraform.tfstate"

    # rather than defining this inline, the Access Key can also be sourced
    # from an Environment Variable - more information is available below.
    access_key = "m8LmjyY6gaHWm7ImQfYvXBlV6Syqfh/oRMOZWfhWGgdLbiwIxtLPElDa+ICfXvpYfuso1r0Eq9NZ+ASttG1Kvw=="
  }
}
module "bastion" {
  source = "../.data/Modules/files/Modules/Bastion"

  subscription_id        = "bc09682f-aa21-4023-a709-ae1a5ed024db"
  resource_group_name    = var.resource_group_name
  vnet_name = var.vnet_name
  #access_key           = var.access_key
  #storage_account_name = var.storage_account_name
  vnet_rg_name = var.vnet_rg_name
  bastion_name = var.bastion_name
  location = var.location
  tags = var.tags
}