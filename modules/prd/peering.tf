resource "azurerm_virtual_network_peering" "prod" {
  name                      = "peerPrdVnetToHubVnet"
  resource_group_name       = var.resource_group_name
  virtual_network_name      = "inv-prod-uan-vnet"
  remote_virtual_network_id = "/subscriptions/57954a41-f93e-41af-bbc1-6e34424e09c6/resourceGroups/hub-uan-vnet-rg/providers/Microsoft.Network/virtualNetworks/hub-uan-vnet"
}