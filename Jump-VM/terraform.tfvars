#Subscription ID
subscription_id = "bc09682f-aa21-4023-a709-ae1a5ed024db"

resource_group_name = "rg-mgmt2-hub-qc-001"
vnet_name           = "vnet-hub-qc-001"
subnetname          = "snet-mgmt-t2-hub-qc-001"
vnet_rg_name        = "rg-network-hub-qc-001"

virtual_machine = {
  vm1 = {
    name     = "vm-extjump-qc-01"
    vm_size  = "Standard_D2s_v3"
    username = "LocalAdmin"
    password = "UXFQ6jb*YMH97S*C"
    subnet = "snet-mgmt-t0-hub-qc-001"
  },
   vm2 = {
    name     = "vm-jump-qc-sys"
    vm_size  = "Standard_D2s_v3"
    username = "LocalAdmin"
    password = "UXFQ6jb*YMH97S*C"
    subnet = "snet-mgmt-t0-hub-qc-001"
  },
  vm3 = {
    name     = "vm-extjump-qc-01"
    vm_size  = "Standard_D2s_v3"
    username = "LocalAdmin"
    password = "UXFQ6jb*YMH97S*C"
    subnet = "snet-mgmt-t2-hub-qc-001"
  },
  vm4 = {
    name     = "vm-jump-qc-sys"
    vm_size  = "Standard_D2s_v3"
    username = "LocalAdmin"
    password = "UXFQ6jb*YMH97S*C"
    subnet = "snet-mgmt-t1-hub-qc-0011"
  },
   }
os_image = {
  publisher = "MicrosoftWindowsDesktop"
  offer     = "windows-10"
  sku       = "20h1-ent"
  version   = "latest"
}

tags = {
  Environment = "Hub"
  CreatedBy   = "MannaiTeam"
  CreatedOn   = "26-02-2023"
  Owner       = ""
  Application = "Jump-Server"
}