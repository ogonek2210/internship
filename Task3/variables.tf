variable "subscription_id" {
  description = "Id subscription for the another_subscription"
  type        = string
  default     = "1baaad40-898e-4928-84c1-327507c4b194"
}

variable "rg_name" {
  type    = string
  default = "Task3"
}

variable "network_name_Ubuntu" {
  type    = string
  default = "vnet-Shared"
}

variable "subnet_name_Ubuntu" {
  type    = string
  default = "subnet-Ubuntu"
}

variable "subnet_name_Centos" {
  type    = string
  default = "subnet-Centos"
}

variable "publicIP_name_Ubuntu" {
  type    = string
  default = "publicIP-Ubuntu"
}

variable "publicIP_name_Centos" {
  type    = string
  default = "publicIP-Centos"
}

variable "nsg_name_Ubuntu" {
  type    = string
  default = "nsg-Ubuntu"
}

variable "nsg_name_Centos" {
  type    = string
  default = "nsg-Centos"
}

variable "network_interface_name_Ubuntu" {
  type    = string
  default = "nic-Ubuntu"
}

variable "network_interface_name_Centos" {
  type    = string
  default = "nic-Centos"
}

variable "storage_account_type_name_Ubuntu" {
  type    = string
  default = "Standard_LRS"
}
variable "publisher_name_Ubuntu" {
  type    = string
  default = "canonical"
}

variable "offer_name_Ubuntu" {
  type    = string
  default = "0001-com-ubuntu-server-focal"
}

variable "sku_name_2004_Ubuntu" {
  type    = string
  default = "20_04-lts-gen2"
}

variable "admin_username" {
  description = "administrator user name"
  default     = "azureuser"
  type        = string
}

variable "offer_name_Centos" {
  type        = string
  description = "Virtual machine source image offer"
  default     = "CentOS"
}

variable "publisher_name_Centos" {
  type        = string
  description = "Virtual machine source image publisher"
  default     = "OpenLogic"

}

variable "sku_name_Centos" {
  type        = string
  description = "SKU for latest CentOS 8 "
  default     = "7_9"
}