# resource "azurerm_synapse_workspace" "example" {
#   name                                 = "${var.prefix}-${var.env}-${var.app_name}-aml"
#   resource_group_name                  = var.resource_group_name
#   location                             = var.location
#   storage_data_lake_gen2_filesystem_id = azurerm_storage_data_lake_gen2_filesystem.example.id
#   sql_administrator_login              = "sqladminuser"
#   sql_administrator_login_password     = "H@Sh1CoR3!"

#   aad_admin {
#     login     = "AzureAD Admin"
#     object_id = "673f8785-7ea7-4d7d-938a-b5d2d00b8d26"
#     tenant_id = "3d2a0e04-7937-4d03-9699-52f2e3e66ce7"
#   }

#   identity {
#     type = "SystemAssigned"
#   }

#   tags = {
#     Env = "production"
#   }
# }