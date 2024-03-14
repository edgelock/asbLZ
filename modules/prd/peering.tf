resource "azurerm_virtual_network_peering" "example_1" {
  name                      = "prdToHubPeering"
  resource_group_name       = azurerm_resource_group.prd.name
  virtual_network_name      = azurerm_virtual_network.virtual_network.name
  remote_virtual_network_id = "/subscriptions/57954a41-f93e-41af-bbc1-6e34424e09c6/resourceGroups/hub-uan-vnet-rg/providers/Microsoft.Network/virtualNetworks/hub-uan-vnet"
}
