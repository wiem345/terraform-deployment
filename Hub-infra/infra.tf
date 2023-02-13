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

module "hub-infra" {

  source = "github.com/sajipoochira/TerraformModules.git/terraform/Modules/HUB-infra/"

  subscription_id = var.subscription_id

  storage_account_name = "stmantfstatebkend"
  prefix = "infra"
  access_key = "ZY5jgsi6BR74tzcpR0wtpc5+YF/29+DHKh+uBIApsndsC9Kz4VrZQJvxvuocVWLcYni9h/zlnb5t+AStiY9reA=="




  location = "qatarcentral"

  network_resource_group = "rg-network-hub-qc-001"

  vnet = {
    name          = "vnet-hub-qc-001",
    address_space = ["172.28.80.0/23", "172.28.82.0/24"]
  }
  resource_group_names = ["rg-efw-hub-qc-001", "rg-waf-hub-qc-001", "rg-ifw-hub-qc-001", "rg-mgmt0-hub-qc-001", "rg-mgmt1-hub-qc-001", "rg-key-hub-qc-001", "rg-shared-hub-qc-001", "rg-st-mgmt-hub-qc-001", "rg-monitor-hub-qc-001", "rg-bkp-hub-qc-001", "rg-bastion-hub-qc-001"]




  network_settings = var.network_settings


  tags = {
    Environment = "Hub"
    CreatedBy   = "NetworkTeam"
    CreatedOn   = "15-01-2023"

  }

}

