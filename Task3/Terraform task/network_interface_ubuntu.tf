#-----------------------------------------------------------------------
# Network interface for Ubuntu
#-----------------------------------------------------------------------
resource "azurerm_network_interface" "ubuntu_nic" {
  name                = var.network_interface_name_Ubuntu
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "ununtu-internal"
    subnet_id                     = azurerm_subnet.ubuntu_subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.ubuntu_publicip.id
  }
}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "ubuntu-nsg-association" {
  network_interface_id      = azurerm_network_interface.ubuntu_nic.id
  network_security_group_id = azurerm_network_security_group.ubuntu_nsg.id
}

# Create Network Card for Centos
resource "azurerm_network_interface" "centos_nic" {
  name                = var.network_interface_name_Centos
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "centos-internal"
    subnet_id                     = azurerm_subnet.centos_subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.centos_publicip.id
  }

}

# Connect the security group to the network interface
resource "azurerm_network_interface_security_group_association" "centos-nsg-association" {
  network_interface_id      = azurerm_network_interface.centos_nic.id
  network_security_group_id = azurerm_network_security_group.centos_nsg.id
}