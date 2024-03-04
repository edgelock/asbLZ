resource "azurerm_synapse_workspace" "example" {
  name                                 = "aml-${var.app_name}-${var.env}"
  resource_group_name                  = var.resource_group_name
  location                             = var.location
  storage_data_lake_gen2_filesystem_id = azurerm_storage_data_lake_gen2_filesystem.example.id
  sql_administrator_login              = "sqladminuser"
  sql_administrator_login_password     = "H@Sh1CoR3!"

  aad_admin {
    login     = "AzureAD Admin"
    object_id = "673f8785-7ea7-4d7d-938a-b5d2d00b8d26"
    tenant_id = "9c8d7196-e4cf-4c75-9312-3b2fc26f41e6"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Env = "production"
  }
}