resource "azurerm_private_endpoint" "example" {
  name                = "pe-${var.env}-${var.app_name}-001"
  location            = var.location
  resource_group_name =  var.resource_group_name
  subnet_id           = azurerm_subnet.subnets["inv-prod-uan-pe-snet"].id
  tags = var.resource_tags

  private_service_connection {
    name                           = "pe-${var.env}-${var.app_name}-001"
    private_connection_resource_id = azurerm_sql_server.example.id
    subresource_names              = [ "sqlServer" ]
    is_manual_connection           = false
  }
}

resource "azurerm_private_endpoint" "example2" {
  name                = "pe-${var.env}-${var.app_name}-002"
  location            = var.location
  resource_group_name =  var.resource_group_name
  subnet_id           = azurerm_subnet.subnets["inv-prod-uan-pe-snet"].id
  tags = var.resource_tags

  private_service_connection {
    name                           = "pe-${var.env}-${var.app_name}-002"
    private_connection_resource_id = azurerm_storage_account.example.id
    subresource_names              = [ "blob" ]
    is_manual_connection           = false
  }
}

resource "azurerm_private_endpoint" "example3" {
  name                = "pe-${var.env}-${var.app_name}-003"
  location            = var.location
  resource_group_name =  var.resource_group_name
  subnet_id           = azurerm_subnet.subnets["inv-prod-uan-pe-snet"].id
  tags = var.resource_tags

  private_service_connection {
    name                           = "pe-${var.env}-${var.app_name}-003"
    private_connection_resource_id = azurerm_key_vault.example.id
    subresource_names              = [ "vault" ]
    is_manual_connection           = false
  }
}

resource "azurerm_private_endpoint" "example4" {
  name                = "pe-${var.env}-${var.app_name}-004"
  location            = var.location
  resource_group_name =  var.resource_group_name
  subnet_id           = azurerm_subnet.subnets["inv-prod-uan-pe-snet"].id
  tags = var.resource_tags

  private_service_connection {
    name                           = "pe-${var.env}-${var.app_name}-004"
    private_connection_resource_id =  azurerm_linux_web_app.example.id
    subresource_names              = [ "sites" ]
    is_manual_connection           = false
  }
}


resource "azurerm_private_endpoint" "example5" {
  name                = "pe-${var.env}-${var.app_name}-005"
  location            = var.location
  resource_group_name =  var.resource_group_name
  subnet_id           = azurerm_subnet.subnets["inv-prod-uan-pe-snet"].id
  tags = var.resource_tags

  private_service_connection {
    name                           = "pe-${var.env}-${var.app_name}-005"
    private_connection_resource_id =  azurerm_linux_web_app.example2.id
    subresource_names              = [ "sites" ]
    is_manual_connection           = false
  }
}