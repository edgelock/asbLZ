resource "azurerm_resource_group" "hub" {
  name     = "hub-uan-vnet-rg"
  location = "UAE North"
}

resource "azurerm_resource_group" "log" {
  name     = "hub-uan-logs-rg"
  location = "UAE North"
}

resource "azurerm_resource_group" "kv" {
  name     = "hub-uan-kv-rg"
  location = "UAE North"
}
resource "azurerm_resource_group" "dns" {
  name     = "hub-uan-dns-rg"
  location = "UAE North"
}