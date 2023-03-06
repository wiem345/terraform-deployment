subscription_id = "bc09682f-aa21-4023-a709-ae1a5ed024db"


resource_group_name = "rg-waf-hub-qc-001"
vnet_name           = "vnet-hub-qc-001"
vnet_rg_name        = "rg-network-hub-qc-001"


OSType = "windows"

virtual_machine = {
  vm1 = {
    name     = "vmqcwaf01"
    vm_size  = "Standard_Ds4_v2"
    username = "LocalAdmin"
    password = "UXFQ6jb*YMH97S*C"
    zone     = [1]
    subnetnames          = ["snet-waf-trust-hub-qc-001", "snet-waf-untrust-hub-qc-001"]
  },
   vm2 = {
    name     = "vmqcwaf02"
    vm_size  = "Standard_Ds4_v2"
    username = "LocalAdmin"
    password = "UXFQ6jb*YMH97S*C"
    zone     = [2]
    subnetnames          =  ["snet-waf-trust-hub-qc-001", "snet-waf-untrust-hub-qc-001"]
  },
 
}
os_image = {
  publisher = "barracudanetworks"
    offer     = "barracuda-app-sec-control-center"
    sku       = "byol"
    version   = "2.1.100804"
}

plan = {

name = "byol"
product = "barracuda-app-sec-control-center"
publisher = "barracudanetworks"

}
tags = {
  Environment = "Hub"
  Application = "WAF"
}