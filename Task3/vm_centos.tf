# Create Linux VM with linux server
resource "azurerm_linux_virtual_machine" "centos-vm" {
  name                = "vmCentos"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  size                = "Standard_B1ls"

  network_interface_ids = [
    azurerm_network_interface.centos_nic.id
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = var.publisher_name_Centos
    offer     = var.offer_name_Centos
    sku       = var.sku_name_Centos
    version   = "latest"
  }

  computer_name                   = "centos-vm"
  admin_username                  = var.admin_username
  admin_password                  = azurerm_key_vault_secret.centos_vm_password.value
  disable_password_authentication = false

  tags = {
    name = "Centos"
  }
}
