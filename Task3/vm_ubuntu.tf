#-----------------------------------------------------------------------
# Resource group
#-----------------------------------------------------------------------
resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = "northeurope"

  tags = {
    rg_name = "Hanna_Sitkevich"
  }
}

#------------------------------------------------------------------------
# Create virtual machine
#------------------------------------------------------------------------
resource "azurerm_linux_virtual_machine" "ubuntu_vm" {
  name                = "vmUbuntu"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  size                = "Standard_B1ls"
  network_interface_ids = [
    azurerm_network_interface.ubuntu_nic.id
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = var.storage_account_type_name_Ubuntu
  }

  source_image_reference {
    publisher = var.publisher_name_Ubuntu
    offer     = var.offer_name_Ubuntu
    sku       = var.sku_name_2004_Ubuntu
    version   = "latest"
  }

  computer_name                   = "ubuntu-vm"
  admin_username                  = var.admin_username
  admin_password                  = azurerm_key_vault_secret.ubuntu_vm_password.value
  disable_password_authentication = false

  custom_data = base64encode(data.template_file.linux-vm-cloud-init.rendered)

  tags = {
    name = "Ubuntu"
  }

}

# Template for bootstrapping
data "template_file" "linux-vm-cloud-init" {
  template = file("./scripts/install-apache-ubuntu.sh")
}


resource "null_resource" "execute" {
  depends_on = [azurerm_linux_virtual_machine.ubuntu_vm]
  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install ca-certificates curl gnupg lsb-release",
      "sudo mkdir -p /etc/apt/keyrings",
      "sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -",
      "sudo add-apt-repository \"deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable\" -y",
      "sudo apt-get update",
      "sudo apt-cache policy docker-ce",
      "sudo apt install -y docker-ce",
      "sudo systemctl enable docker",
      "sudo systemctl start docker",
      "sudo usermod -aG docker azureuser",
      "echo version $(docker --version)",
      "sudo apt-get update -y",
      "sudo apt-get install apache2 -y",
      "sudo systemctl start apache2",
      "sudo systemctl enable apache2",

      "file=\"/var/www/html/index.html\"",
      "echo \"<h1>Hello World</h1>\" | sudo tee  /var/www/html/index.html",
      "echo \"\" | sudo tee -a /var/www/html/index.html",
      "echo \"<h1>OS version</h1>\" | sudo tee -a /var/www/html/index.html",
      "echo \"<pre> $(uname -a) </pre>\" | sudo tee -a /var/www/html/index.html"
    ]

    connection {
      type     = "ssh"
      host     = data.azurerm_public_ip.ubuntu_publicip.ip_address
      user     = var.admin_username
      password = azurerm_key_vault_secret.ubuntu_vm_password.value
      timeout  = "1m"
    }
  }
}

