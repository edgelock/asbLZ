# resource "azurerm_public_ip" "example" {
#   name                = "afw-pip-${var.env}-${var.app_name}-001"
#   location            = var.location
#   resource_group_name = var.resource_group_name
#   allocation_method   = "Static"
#   sku                 = "Standard"
# }


# resource "azurerm_firewall" "example" {
#   name                = "testfirewall"
#   location            = var.location
#   resource_group_name = var.resource_group_name
#   sku_name            = "AZFW_VNet"
#   sku_tier            = "Standard"

#   ip_configuration {
#     name                 = "configuration"
#     subnet_id            = azurerm_subnet.subnets["AzureFirewallSubnet"].id
#     public_ip_address_id = azurerm_public_ip.example.id
#   }
# }