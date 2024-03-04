resource "azurerm_public_ip" "example" {
  name                = "afw-navigator-prod-001"
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  sku                 = "Standard"
}
