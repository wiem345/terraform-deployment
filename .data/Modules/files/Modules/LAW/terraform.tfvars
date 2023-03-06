#Backend Deatils -----------------
  storage_account_name = "stcratfstatebkend"
  ##prefix = "infra"
  access_key = "k/hDNA2Hv4l9f7QnE5Spcby1888WYWDMkIfSeCLbh0CDpda38ZlDvtoLXaER3zpyeYq4iSD0fwGz+AStlEPjlA=="
###########################################


subscription_id = "78b75b7d-1115-4589-9d4f-f762481d8a3f"
law_name        = "log-sec-hub-qc-001"
law_subnetname  = "snet-log-pvl-hub-qc-001"




tags = {
    Environment = "Hub"
    CreatedBy   = "MannaiTeam"
    CreatedOn   = "25-02-2023"
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