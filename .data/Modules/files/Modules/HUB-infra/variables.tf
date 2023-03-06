##  variables
variable "subscription_id" {
  
}
variable "location" {

}

variable "tags" {

  default = {
    Environment = "Hub"

  }

}

variable "network_resource_group" {

}

variable "vnet" {

}

variable "resource_group_names" {

}
variable "network_settings" {

  type = map(object({
    resource_group   = string
    subnet           = string
    address_prefixes = list(string)
    nsg              = string
    route_table      = string
  }))

}

variable "storage_account_name" {

}


variable "access_key" {

}