resource "azurerm_resource_group" "hub" {
  name     = "${var.env}-${var.app_name}-vnet-rg"
  location = "UAE North"
}

resource "azurerm_resource_group" "log" {
  name     = "${var.env}-${var.app_name}-logs-rg"
  location = "UAE North"
}

resource "azurerm_resource_group" "kv" {
  name     = "${var.env}-${var.app_name}-kv-rg"
  location = "UAE North"
}

resource "azurerm_resource_group" "dns" {
  name     = "${var.env}-${var.app_name}-dns-rg"
  location = "UAE North"
}