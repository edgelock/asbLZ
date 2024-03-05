resource "azurerm_storage_account" "example" {
  name                     = "st${var.env}${var.app_name}001"
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  is_hns_enabled           = "true"
  allow_nested_items_to_be_public = false
}

resource "azurerm_storage_data_lake_gen2_filesystem" "example" {
  name               = "dl${var.app_name}${var.env}"
  storage_account_id = azurerm_storage_account.example.id

  properties = {
    hello = "aGVsbG8="
  }
}