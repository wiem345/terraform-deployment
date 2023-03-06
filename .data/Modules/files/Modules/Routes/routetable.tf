
locals {
  routes_rt =concat( [for route in var.routes : [for rt in var.route_table: merge({route_table_name = rt}, route)]]...)
}

resource "azurerm_route" "udr-rt-hub-reverse" {

  count = length(local.routes_rt)
  
  name                = local.routes_rt[count.index].name
  resource_group_name = data.azurerm_resource_group.rg-network-hub-qc-001.name
  route_table_name    = local.routes_rt[count.index].route_table_name
  address_prefix      = local.routes_rt[count.index].address_prefix
  next_hop_type       = local.routes_rt[count.index].next_hop_type
  next_hop_in_ip_address       = local.routes_rt[count.index].next_hop_type == "VirtualAppliance" ? var.next_hop_in_ip_address : null

  
  }
