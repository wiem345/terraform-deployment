#Backend Deatils -----------------
  storage_account_name = "stcratfstatebkend"
  #prefix = "infra"
  access_key = "k/hDNA2Hv4l9f7QnE5Spcby1888WYWDMkIfSeCLbh0CDpda38ZlDvtoLXaER3zpyeYq4iSD0fwGz+AStlEPjlA=="
###########################################

subscription_id = "78b75b7d-1115-4589-9d4f-f762481d8a3f"

  location = "qatarcentral"

  network_resource_group = "rg-network-hub-qc-001"

  vnet = {
    name          = "vnet-hub-qc-001",
    address_space = ["172.28.80.0/23", "172.28.82.0/24"]
  }
  resource_group_names = ["rg-efw-hub-qc-001", "rg-waf-hub-qc-001", "rg-ifw-hub-qc-001", "rg-mgmt0-hub-qc-001", "rg-mgmt1-hub-qc-001", "rg-key-hub-qc-001", "rg-shared-hub-qc-001", "rg-st-mgmt-hub-qc-001", "rg-monitor-hub-qc-001", "rg-bkp-hub-qc-001", "rg-bastion-hub-qc-001"]



network_settings = {
  net0 = {
    resource_group   = "rg-efw-hub-qc-001"
    subnet           = "snet-nva-mgmt-hub-qc-001"
    address_prefixes = ["172.28.80.0/27"]
    nsg              = "nsg-nva-mgmt-hub-qc-001"
    route_table      = "rt-nva-mgmt-hub-qc-001"
  },

  net1 = {
    resource_group   = "rg-efw-hub-qc-001"
    subnet           = "snet-efw-untrust-hub-qc-001"
    address_prefixes = ["172.28.80.32/28"]
    nsg              = "nsg-efw-untrust-hub-qc-001"
    route_table      = "rt-efw-untrust-hub-qc-001"
  },

  net2 = {
    resource_group   = "rg-efw-hub-qc-001"
    subnet           = "snet-efw-trust-hub-qc-001"
    address_prefixes = ["172.28.80.48/28"]
    nsg              = "nsg-efw-trust-hub-qc-001"
    route_table      = "rt-efw-trust-hub-qc-001"
  },

  net3 = {
    resource_group   = "rg-efw-hub-qc-001"
    subnet           = "snet-efw-ha-hub-qc-001"
    address_prefixes = ["172.28.80.64/29"]
    nsg              = "nsg-efw-ha-hub-qc-001"
    route_table      = "rt-efw-ha-hub-qc-001"
  },

  net4 = {
    
    resource_group   = "rg-waf-hub-qc-001"
    subnet           = "snet-waf-untrust-hub-qc-001"
    address_prefixes = ["172.28.81.0/24"]
    nsg              = "nsg-waf-untrust-hub-qc-001"
    route_table      = "rt-waf-untrust-hub-qc-001"
  },

  net5 = {
    resource_group   = "rg-waf-hub-qc-001"
    subnet           = "snet-waf-trust-hub-qc-001"
    address_prefixes = ["172.28.80.80/28"]
    nsg              = "nsg-waf-trust-hub-qc-001"
    route_table      = "rt-waf-trust-hub-qc-001"
  },

  net6 = {
    resource_group   =  "rg-ifw-hub-qc-001"
    subnet           = "snet-ifw-untrust-hub-qc-001"
    address_prefixes = ["172.28.80.96/28"]
    nsg              = "nsg-ifw-untrust-hub-qc-001"
    route_table      = "rt-ifw-untrust-hub-qc-001"
  },

  net7 = {
    resource_group   =  "rg-ifw-hub-qc-001"
    subnet           = "snet-ifw-trust-hub-qc-001"
    address_prefixes = ["172.28.80.112/28"]
    nsg              = "nsg-ifw-trust-hub-qc-001"
    route_table      = "rt-ifw-trust-hub-qc-001"
  },

  net8 = {
    resource_group   =  "rg-ifw-hub-qc-001"
    subnet           = "snet-ifw-ha-hub-qc-001"
    address_prefixes = ["172.28.80.72/29"]
    nsg              = "nsg-ifw-ha-hub-qc-001"
    route_table      = "rt-ifw-ha-hub-qc-001"
  },

  net9 = {
    resource_group   = "rg-mgmt0-hub-qc-001"
    subnet           = "snet-mgmt-t0-hub-qc-001"
    address_prefixes = ["172.28.80.128/28"]
    nsg              = "nsg-mgmt-t0-hub-qc-001"
    route_table      = "rt-mgmt-t0-hub-qc-001"
  },

  net10 = {
    resource_group   = "rg-mgmt0-hub-qc-001"
    subnet           = "snet-mgmt-t0-hub-qc-002"
    address_prefixes = ["172.28.80.144/28"]
    nsg              = "nsg-mgmt-t0-hub-qc-002"
    route_table      = "rt-mgmt-t0-hub-qc-002"
  },

  net11 = {
    resource_group   = "rg-mgmt1-hub-qc-001"
    subnet           = "snet-mgmt-t1-hub-qc-001"
    address_prefixes = ["172.28.80.160/28"]
    nsg              = "nsg-mgmt-t1-hub-qc-001"
    route_table      = "rt-mgmt-t1-hub-qc-001"
  },
  net12 = {
    resource_group   = "rg-mgmt1-hub-qc-001"
    subnet           = "snet-mgmt-t2-hub-qc-001"
    address_prefixes = ["172.28.82.128/28"]
    nsg              = "nsg-mgmt-t2-hub-qc-001"
    route_table      = "rt-mgmt-t2-hub-qc-001"
  },
  net13 = {
    resource_group   = "rg-key-hub-qc-001"
    subnet           = "snet-kv-hub-qc-001"
    address_prefixes = ["172.28.80.176/29"]
    nsg              = "nsg-kv-hub-qc-001"
    route_table      = "rt-kv-hub-qc-001"
  },
  net14 = {
    resource_group   = "rg-shared-hub-qc-001"
    subnet           = "snet-shared-hub-qc-001"
    address_prefixes = ["172.28.80.192/26"]
    nsg              = "nsg-shared-hub-qc-001"
    route_table      = "rt-shared-hub-qc-001"
  },

  net15 = {
    resource_group   = "rg-st-mgmt-hub-qc-001"
    subnet           = "snet-st-mgmt-hub-qc-001"
    address_prefixes = ["172.28.82.0/28"]
    nsg              = "nsg-st-mgmt-hub-qc-001"
    route_table      = "rt-st-mgmt-hub-qc-001"
  },

  net16 = {
    resource_group   = "rg-monitor-hub-qc-001"
    subnet           = "snet-log-pvl-hub-qc-001"
    address_prefixes = ["172.28.82.32/27"]
    nsg              = "nsg-log-pvl-hub-qc-001"
    route_table      = "rt-log-pvl-hub-qc-001"
  },

  net17 = {
    resource_group   = "rg-bastion-hub-qc-001"
    subnet           = "AzureBastionSubnet"
    address_prefixes = ["172.28.82.64/26"]
    nsg              = ""
    route_table      = ""
  },
}


 tags = {
    Environment = "Hub"
    CreatedBy   = "NetworkTeam"
    CreatedOn   = "15-01-2023"

  }