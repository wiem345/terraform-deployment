variable "resource_group_name" {

}

variable "vnet_name" {

}

variable "vnet_rg_name" {
  
}



variable "virtual_machine" {
  type = map(object({
    name     = string
    vm_size  = string
    username = string
    password = string
    zone     = list(number) 
    subnetnames = list(string)
  }))

}

variable "os_image" {

}

variable "plan" {

}


variable "tags" {

}

variable "subscription_id" {

}

variable "OSType" {

}
