resource "azurerm_resource_group" "dev_rg" {
  name     = "rg-hub-navigator-001"
  location = var.location
  tags = var.resource_tags
}

resource "azurerm_resource_group" "dev_rg2" {
  name     = "rg-hub-navigator-002"
  location = var.location
  tags = var.resource_tags
}