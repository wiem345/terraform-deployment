subscription_id = "78b75b7d-1115-4589-9d4f-f762481d8a3f"

resource_group_name = "rg-shared-hub-qc-001"
vnet_name           = "vnet-hub-qc-001"
subnetname          = "snet-hub-shared-qc-001"
vnet_rg_name        = "rg-network-hub-qc-001"
OSType              = "windows"

virtual_machine = {
  vm1 = {
    name     = "vm-dns-fwdr-001"
    vm_size  = "Standard_D2s_v3"
    username = "LocalAdmin"
    password = "Ch@NgeM31@MweeK"
  },
   vm2 = {
    name     = "vm-dns-fwdr-002"
    vm_size  = "Standard_D2s_v3"
    username = "LocalAdmin"
    password = "Ch@NgeM31@MweeK"
  },
  
      
}
os_image = {
  publisher = "MicrosoftWindowsServer"
  offer     = "WindowsServer"
  sku       = "2019-Datacenter"
  version   = "latest"
}

tags = {
  Environment = "Hub"
  CreatedBy   = "NetworkTeam"
  CreatedOn   = "24-02-2023"
  Owner       = ""
  Application = "DNS"
}

