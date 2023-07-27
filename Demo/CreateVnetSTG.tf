terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.59.0"
    }
  }
}


provider "azurerm" {
  skip_provider_registration = "true"
  features {}

  client_id       = "30c94aac-8b25-4f5b-aaa6-7e3be66c1ae4"
  client_secret   = "INw8Q~3_I6WZmGnfwQbyC4cUE~dK6tIycp5ZSdhE"
  subscription_id = "f4bbf4fc-0352-4d99-8272-0f50d4e87164"
  tenant_id       = "9909cf18-de55-4aad-8e1e-d0a56159132c"


}


# Create virtual network 
resource "azurerm_virtual_network" "MyVnet001" {
  name                = "vnettf001"
  address_space       = ["10.10.0.0/24"]
  resource_group_name = "rg-sa-tfst"
  location            = "East US"
  tags = {
    Environment  = "QC"
    "Created By" = "Admin"
    Model        = "Pipeline Test"
    project      = "MS Lab Readiness"
  }
}

# Create STG Account
resource "azurerm_storage_account" "lab01" {
  name                     = "mystglabtf01"
  resource_group_name      = "rg-sa-tfst"
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Environment  = "QC"
    "Created By" = "Admin"
    Model        = "Pipeline Test"
    project      = "MS Lab Readiness"
  }
}


