#Backend Deatils -----------------
  storage_account_name = "stcratfstatebkend"
  prefix = "infra"
  access_key = "k/hDNA2Hv4l9f7QnE5Spcby1888WYWDMkIfSeCLbh0CDpda38ZlDvtoLXaER3zpyeYq4iSD0fwGz+AStlEPjlA=="
###########################################


#Subscription ID
subscription_id = "78b75b7d-1115-4589-9d4f-f762481d8a3f"

route_table = [    "rt-nva-mgmt-hub-qc-001",    "rt-mgmt-t0-hub-qc-001",    "rt-mgmt-t0-hub-qc-002",    "rt-mgmt-t1-hub-qc-001",    "rt-kv-hub-qc-001",    "rt-shared-hub-qc-001",    "rt-st-mgmt-hub-qc-001",    "rt-log-pvl-hub-qc-001"]

resource_group_name = "rg-network-hub-qc-001"

next_hop_in_ip_address = "172.29.0.132"


routes = [
  {
    name                   = "udr-internet"
    address_prefix         = "0.0.0.0/0"
    next_hop_type          = "VirtualAppliance"
  },
  {

    name                   = "udr-rfc-01",
    address_prefix         = "10.0.0.0/8",
    next_hop_type          = "VirtualAppliance"

  },
  {

    name                   = "udr-rfc-02",
    address_prefix         = "172.16.0.0/12",
    next_hop_type          = "VirtualAppliance"

  },
  {

    name                   = "udr-rfc-03",
    address_prefix         = "192.168.0.0/16",
    next_hop_type          = "VirtualAppliance"

  },
  {

    name                   = "udr-rfc-04",
    address_prefix         = "100.64.0.0/10",
    next_hop_type          = "VirtualAppliance"

  }

]

