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
////

# resource "azurerm_app_service" "example" {
#   name                = "${var.prefix}-${var.env}-${var.app_name}-appsvc01"
#   location            = var.location
#   resource_group_name = var.resource_group_name
#   app_service_plan_id = azurerm_app_service_plan.example.id
#   tags = var.resource_tags

#   site_config {
#     dotnet_framework_version = "v4.0"
#     scm_type                 = "None"
#   }

#   app_settings = {
#     "SOME_KEY" = "some-value"
#   }

#   connection_string {
#     name  = "Database"
#     type  = "SQLServer"
#     value = "Server=some-server.mydomain.com;Integrated Security=SSPI"
#   }
# }

# resource "azurerm_app_service" "example2" {
#   name                = "${var.prefix}-${var.env}-${var.app_name}-appsvc02"
#   location            = var.location
#   resource_group_name = var.resource_group_name
#   app_service_plan_id = azurerm_app_service_plan.example.id
#   tags = var.resource_tags

#   site_config {
#     dotnet_framework_version = "v4.0"
#     scm_type                 = "None"
#   }

#   app_settings = {
#     "SOME_KEY" = "some-value"
#   }

#   connection_string {
#     name  = "Database"
#     type  = "SQLServer"
#     value = "Server=some-server.mydomain.com;Integrated Security=SSPI"
#   }
# }

