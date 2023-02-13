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


module "reverse-routes" {
  source = "github.com/sajipoochira/TerraformModules.git/terraform/Modules/Jump-VM"

  subscription_id        = ""
  next_hop_in_ip_address = var.next_hop_in_ip_address
  routes                 = var.routes
  route_table            = var.route_table
  resource_group_name    = var.resource_group_name

}
