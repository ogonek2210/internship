#-----------------------------------------------------------------------
# Network Security Group and rule for Ubuntu
#-----------------------------------------------------------------------
resource "azurerm_network_security_group" "ubuntu_nsg" {
  name                = var.nsg_name_Ubuntu
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

}

resource "azurerm_network_security_group" "centos_nsg" {
  name                = var.nsg_name_Centos
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

}