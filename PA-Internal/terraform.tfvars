subscription_id = "bc09682f-aa21-4023-a709-ae1a5ed024db"

resource_group_name = "rg-ifw-hub-qc-001"
vnet_name           = "vnet-hub-qc-001"
vnet_rg_name        = "rg-network-hub-qc-001"


OSType = "windows"

virtual_machine = {
  vm1 = {
    name     = "vmintqcfw01"
    vm_size  = "Standard_Ds4_v2"
    username = "LocalAdmin"
    password = "UXFQ6jb*YMH97S*C"
    zone     = [1]
    subnetnames          = ["snet-ifw-untrust-hub-qc-001", "snet-ifw-trust-hub-qc-001","snet-ifw-ha-hub-qc-001" ]
  },
   vm2 = {
    name     = "vmintqcfw02"
    vm_size  = "Standard_Ds4_v2"
    username = "LocalAdmin"
    password = "UXFQ6jb*YMH97S*C"
    zone     = [2]
    subnetnames          = ["snet-ifw-untrust-hub-qc-001", "snet-ifw-trust-hub-qc-001","snet-ifw-ha-hub-qc-001" ]
  },
 
}
os_image = {
  publisher = "paloaltonetworks"
    offer     = "vmseries-flex"
    sku       = "byol"
    version   = "latest"
}

plan = {

name = "byol"
product = "vmseries-flex"
publisher = "paloaltonetworks"

}
tags = {
  Environment = "Hub"
  Application = "internal firewall"
}