resource "azurerm_network_security_group" "example" {
  name                = "${var.prefix}-${var.env}-${var.app_name}-pe-nsg"
  location            = var.location
  resource_group_name = var.resource_group_name

  security_rule {
    name                       = "clientCommunicationToApim"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_ranges    = [ 80, 443 ]
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = var.resource_tags
}

resource "azurerm_network_security_group" "example2" {
  name                = "${var.prefix}-${var.env}-${var.app_name}-sql-nsg"
  location            = var.location
  resource_group_name = var.resource_group_name

  security_rule {
    name                       = "clientCommunicationToApim"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_ranges    = [ 80, 443 ]
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  tags = var.resource_tags
}

resource "azurerm_network_security_group" "example3" {
  name                = "${var.prefix}-${var.env}-${var.app_name}-syn-nsg"
  location            = var.location
  resource_group_name = var.resource_group_name

  security_rule {
    name                       = "clientCommunicationToApim"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_ranges    = [ 80, 443 ]
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  
  tags = var.resource_tags
}