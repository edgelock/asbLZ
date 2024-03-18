resource "azurerm_private_dns_zone" "example" {
  name                = "privatelink.vaultcore.azure.net"
  resource_group_name = azurerm_resource_group.dns.name
  tags = var.resource_tags
}

resource "azurerm_private_dns_zone" "example2" {
  name                = "privatelink.database.windows.net"
  resource_group_name = azurerm_resource_group.dns.name
  tags = var.resource_tags
}

resource "azurerm_private_dns_zone" "example3" {
  name                = "privatelink.blob.core.windows.net"
  resource_group_name = azurerm_resource_group.dns.name
  tags = var.resource_tags
}

resource "azurerm_private_dns_zone_virtual_network_link" "example" {
  name                  = "${var.env}-${var.app_name}-link01"
  resource_group_name   = azurerm_resource_group.dns.name
  private_dns_zone_name = azurerm_private_dns_zone.example.name
  virtual_network_id    = azurerm_virtual_network.virtual_network.id
}

resource "azurerm_private_dns_zone_virtual_network_link" "example2" {
  name                  = "${var.env}-${var.app_name}-link01"
  resource_group_name   = azurerm_resource_group.dns.name
  private_dns_zone_name = azurerm_private_dns_zone.example2.name
  virtual_network_id    = azurerm_virtual_network.virtual_network.id
}

resource "azurerm_private_dns_zone_virtual_network_link" "example3" {
  name                  = "${var.env}-${var.app_name}-link01"
  resource_group_name   = azurerm_resource_group.dns.name
  private_dns_zone_name = azurerm_private_dns_zone.example3.name
  virtual_network_id    = azurerm_virtual_network.virtual_network.id
}