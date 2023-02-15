terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">=3.0.0"
    }
  }
}

terraform {
  backend "azurerm" {
    storage_account_name = var.storage_account_name
    container_name       = "tfstate"
    key                  = "${var.prefix}.hub.terraform.tfstate"

    # rather than defining this inline, the Access Key can also be sourced
    # from an Environment Variable - more information is available below.
    access_key = var.access_key
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}


module "Trust-internal-routes" {
  source = "github.com/sajipoochira/TerraformModules.git/terraform/Modules/Routes/"

  subscription_id        = ""
  next_hop_in_ip_address = var.next_hop_in_ip_address
  routes                 = var.routes
  route_table            = var.route_table
  resource_group_name    = var.resource_group_name

}


