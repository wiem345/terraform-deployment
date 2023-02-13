subscription_id = "70cf0573-0b63-46e5-b3fc-d998e8f68082"
law_name        = "log-sec-ss-hub-qc-001"
law_subnetname  = "snet-hub-log-pvl-qc-001"




tags = {
  Environment = "Hub"
}


resource_group_name = "rg-sec-hub-qc-001"
vnet_name           = "vnet-hub-qc-001"
subnetname          = "snet-shared-hub-qc-001"
vnet_rg_name        = "rg-network-hub-qc-001"

virtual_machine = {
  vm1 = {
    name     = "vm-cef-log-001"
    vm_size  = "Standard_D2s_v3"
    username = "LocalAdmin"
    password = "Ch@NgeM31@MweeK"
  },
  vm2 = {
    name     = "vm-cef-log-002"
    vm_size  = "Standard_D2s_v3"
    username = "LocalAdmin"
    password = "Ch@NgeM31@MweeK"
  },


}
os_image = {
  publisher = "Canonical"
  offer     = "UbuntuServer"
  sku       = "19.10-DAILY"
  version   = "latest"

}

#LoadBalancer

lb-required = true

lbname      = "lbi-cef-hub-qc-001"
fipname     = "fip-cef"
backendName = "bknd-cef-log"
ruleName    = "lbr-cef-log"