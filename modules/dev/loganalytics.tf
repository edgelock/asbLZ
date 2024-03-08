# resource "azurerm_log_analytics_workspace" "law01" {
#   name                = "${var.prefix}-${var.env}-${var.app_name}-law"
#   location            = var.location
#   resource_group_name = var.resource_group_name
#   sku                 = "PerGB2018"
#   retention_in_days   = 30
#   tags = var.resource_tags
# }