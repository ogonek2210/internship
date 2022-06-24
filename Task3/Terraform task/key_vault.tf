provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = true
    }
  }
}
data "azurerm_client_config" "current" {}

#-----------------------------------------------------------------------
# Key vault
#-----------------------------------------------------------------------
resource "azurerm_key_vault" "kv-common" {
  provider                    = azurerm.another_subscription
  name                        = "kv-common-sas"
  location                    = azurerm_resource_group.rg.location
  resource_group_name         = azurerm_resource_group.rg.name
  enabled_for_disk_encryption = true
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  soft_delete_retention_days  = 7
  purge_protection_enabled    = false
  sku_name                    = "standard"

  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    key_permissions = [
      "Create",
      "Get"
    ]

    secret_permissions = [
      "Set",
      "Get",
      "Delete",
      "Purge",
      "Recover",
      "List"
    ]

  }
}

#Create KeyVault password
resource "random_password" "ubuntu_vm_password" {
  length  = 20
  special = true
}

#Create KeyVault password
resource "random_password" "centos_vm_password" {
  length  = 20
  special = true
}


#Create Key Vault Secret for Ubuntu VM
resource "azurerm_key_vault_secret" "ubuntu_vm_password" {
  name         = "ubuntu-vm-sas"
  value        = random_password.ubuntu_vm_password.result
  key_vault_id = azurerm_key_vault.kv-common.id
  depends_on   = [azurerm_key_vault.kv-common]
}

#Create Key Vault Secret for Centos VM
resource "azurerm_key_vault_secret" "centos_vm_password" {
  name         = "centos-vm-sas"
  value        = random_password.centos_vm_password.result
  key_vault_id = azurerm_key_vault.kv-common.id
  depends_on   = [azurerm_key_vault.kv-common]
}