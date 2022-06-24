#-----------------------------------------------------------------------
# Providers configuration
#-----------------------------------------------------------------------
provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = true
    }
  }
  alias           = "another_subscription"
  subscription_id = var.subscription_id
  # client_id       = "dc9306fe-2781-41e0-a182-f295e22e241a"
  # client_secret   = "933b80f3-c674-4348-91c0-481d231e8473"
  # tenant_id       = "b41b72d0-4e9f-4c26-8a69-f949f367c91d"

}

