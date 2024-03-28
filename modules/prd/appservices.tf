resource "azurerm_service_plan" "example" {
  name                = "${var.prefix}-${var.env}-${var.app_name}-appsvcplan01"
  resource_group_name = var.resource_group_name
  location            = var.location
  os_type             = "Linux"
  sku_name            = "P1v2"
}

resource "azurerm_linux_web_app" "example" {
  name                = "${var.prefix}-${var.env}-${var.app_name}-appsvc01"
  resource_group_name = var.resource_group_name
  location            = azurerm_service_plan.example.location
  service_plan_id     = azurerm_service_plan.example.id

  site_config {}
}

resource "azurerm_linux_web_app" "example2" {
  name                = "${var.prefix}-${var.env}-${var.app_name}-appsvc02"
  resource_group_name = var.resource_group_name
  location            = azurerm_service_plan.example.location
  service_plan_id     = azurerm_service_plan.example.id

  site_config {}
}