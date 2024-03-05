resource "azurerm_resource_group" "dev_rg" {
  name     = "inv-dev-uan-vnet-rg"
  location = var.location
  tags = var.resource_tags
}