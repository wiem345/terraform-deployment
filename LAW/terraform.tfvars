#Backend Deatils -----------------
  storage_account_name = "stcratfstatebkend"
  ##prefix = "infra"
  access_key = "m8LmjyY6gaHWm7ImQfYvXBlV6Syqfh/oRMOZWfhWGgdLbiwIxtLPElDa+ICfXvpYfuso1r0Eq9NZ+ASttG1Kvw=="
###########################################


subscription_id = "bc09682f-aa21-4023-a709-ae1a5ed024db"
law_name        = "log-sec-hub-qc-001"
law_subnetname  = "snet-log-pvl-hub-qc-001"




tags = {
    Environment = "Hub"
    CreatedBy   = "MannaiTeam"
    CreatedOn   = "25-02-2023"
}


resource_group_name = "rg-monitor-hub-qc-001"
vnet_name           = "vnet-hub-qc-001"
subnetname          = "snet-shared-hub-qc-001"
vnet_rg_name        = "rg-network-hub-qc-001"

virtual_machine = {
  vm1 = {
    name     = "vm-cef-log-001"
    vm_size  = "Standard_D2s_v3"
    username = "LocalAdmin"
    password = "UXFQ6jb*YMH97S*C"
  },
  vm2 = {
    name     = "vm-cef-log-002"
    vm_size  = "Standard_D2s_v3"
    username = "LocalAdmin"
    password = "UXFQ6jb*YMH97S*C"
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