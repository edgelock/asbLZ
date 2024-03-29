resource "azurerm_network_interface" "main" {
  name                = "${var.prefix}-${var.env}-${var.app_name}-nic-001"
  location            = var.location
  resource_group_name = var.resource_group_name
  tags = var.resource_tags

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = azurerm_subnet.subnets["inv-prod-uan-vm-snet"].id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_network_interface" "main2" {
  name                = "${var.prefix}-${var.env}-${var.app_name}-002"
  location            = var.location
  resource_group_name = var.resource_group_name
  tags = var.resource_tags

  ip_configuration {
    name                          = "testconfiguration1"
    subnet_id                     = azurerm_subnet.subnets["inv-prod-uan-vm-snet"].id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "main" {
  name                  = "${var.prefix}-${var.env}-${var.app_name}-vm-001"
  location              = var.location
  resource_group_name   = var.resource_group_name
  network_interface_ids = [azurerm_network_interface.main.id]
  vm_size               = "Standard_DS1_v2"
  delete_os_disk_on_termination = true

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  # delete_os_disk_on_termination = true

  # Uncomment this line to delete the data disks automatically when deleting the VM
  # delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
  storage_os_disk {
    name              = "vmosdisk001"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "hostname"
    admin_username = "testadmin"
    admin_password = "Password1234!"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = var.resource_tags
}

resource "azurerm_virtual_machine" "main2" {
  name                  = "${var.prefix}-${var.env}-${var.app_name}-vm-002"
  location              = var.location
  resource_group_name   = var.resource_group_name
  network_interface_ids = [azurerm_network_interface.main2.id]
  vm_size               = "Standard_DS1_v2"
  delete_os_disk_on_termination = true

  # Uncomment this line to delete the OS disk automatically when deleting the VM
  # delete_os_disk_on_termination = true

  # Uncomment this line to delete the data disks automatically when deleting the VM
  # delete_data_disks_on_termination = true

  storage_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
  storage_os_disk {
    name              = "vmosdisk002"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "hostname"
    admin_username = "testadmin"
    admin_password = "Password1234!"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = var.resource_tags
}