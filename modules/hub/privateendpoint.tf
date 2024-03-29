

resource "azurerm_private_endpoint" "example2" {
  name                = "pe-${var.env}-${var.app_name}-001"
  location            = var.location
  resource_group_name = azurerm_resource_group.hub.name
  subnet_id           = azurerm_subnet.subnets["hub-uan-pe-snet"].id
  tags = var.resource_tags

  private_service_connection {
    name                           = "pe-${var.env}-${var.app_name}-001"
    private_connection_resource_id = azurerm_storage_account.example.id
    subresource_names              = [ "blob" ]
    is_manual_connection           = false
  }
}

resource "azurerm_private_endpoint" "example3" {
  name                = "pe-${var.env}-${var.app_name}-002"
  location            = var.location
  resource_group_name = azurerm_resource_group.hub.name
  subnet_id           = azurerm_subnet.subnets["hub-uan-pe-snet"].id
  tags = var.resource_tags

  private_service_connection {
    name                           = "pe-${var.env}-${var.app_name}-002"
    private_connection_resource_id = azurerm_key_vault.example.id
    subresource_names              = [ "vault" ]
    is_manual_connection           = false
  }
}