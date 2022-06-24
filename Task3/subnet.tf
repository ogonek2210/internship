#-----------------------------------------------------------------------
# Subnet for Ubuntu
#-----------------------------------------------------------------------
resource "azurerm_subnet" "ubuntu_subnet" {
  name                 = var.subnet_name_Ubuntu
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.ubuntu_network.name
  address_prefixes     = ["192.168.1.0/24"]
}

resource "azurerm_subnet" "centos_subnet" {
  name                 = var.subnet_name_Centos
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.ubuntu_network.name
  address_prefixes     = ["192.168.2.0/24"]
}