#-----------------------------------------------------------------------
# Public IPs for Ubuntu
#-----------------------------------------------------------------------
resource "azurerm_public_ip" "ubuntu_publicip" {
  name                = var.publicIP_name_Ubuntu
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Static"
  sku                 = "Basic"
}

#create a data to recive ip
data "azurerm_public_ip" "ubuntu_publicip" {
  name                = azurerm_public_ip.ubuntu_publicip.name
  resource_group_name = azurerm_public_ip.ubuntu_publicip.resource_group_name

}


resource "azurerm_public_ip" "centos_publicip" {
  name                = var.publicIP_name_Centos
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Static"
  sku                 = "Basic"
}