resource "azurerm_virtual_network_peering" "example_1" {
  name                      = "peerHubToDev"
  resource_group_name       = azurerm_resource_group.hub.name
  virtual_network_name      = azurerm_virtual_network.virtual_network.name
  remote_virtual_network_id = "/subscriptions/51325363-3635-412f-b99f-26238c60a8ba/resourceGroups/inv-dev-uan-vnet-rg/providers/Microsoft.Network/virtualNetworks/inv-dev-uan-vnet"
  allow_gateway_transit = true
}

resource "azurerm_virtual_network_peering" "example_2" {
  name                      = "peerHubToPrd"
  resource_group_name       = azurerm_resource_group.hub.name
  virtual_network_name      = azurerm_virtual_network.virtual_network.name
  remote_virtual_network_id = "/subscriptions/6b55ba09-7467-473f-81b8-d751c3f6fb87/resourceGroups/inv-prd-uan-vnet-rg/providers/Microsoft.Network/virtualNetworks/inv-prd-uan-vnet"
    allow_gateway_transit = true
}
