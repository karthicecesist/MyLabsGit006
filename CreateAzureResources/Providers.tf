terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.68.0"
    }
  }
/*
 backend "azurerm" {
    resource_group_name  = "mydevtf001-rg"
    storage_account_name = "mydevtf001stg001"
    container_name       = "mytfstate01"
    key                  = "myteststateterraform.tfstate"
  }
 */
}


provider "azurerm" {


  skip_provider_registration = true
  
  subscription_id = "2213e8b1-dbc7-4d54-8aff-b5e315df5e5b"
  client_id       = "610eb742-bde5-4ee4-81f7-e5860319421d"
  client_secret   = "puH8Q~Sv1fyVkgI1N12lKOT266HW2DJW10kYSbMr"
  tenant_id       = "84f1e4ea-8554-43e1-8709-f0b8589ea118"
  
  features {}

}

