resource "azurerm_sql_server" "example" {
  name                         = "${var.prefix}-${var.env}-${var.app_name}-sql"
  resource_group_name          = var.resource_group_name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = "4dm1n157r470r"
  administrator_login_password = "4-v3ry-53cr37-p455w0rd"

  tags = var.resource_tags
}