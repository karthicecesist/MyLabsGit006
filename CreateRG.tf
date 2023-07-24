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
}

resource "azurerm_resource_group" "rg01" {
  name = "MyAzureRGEUS001"
  location = "eastus"
}

resource "azurerm_resource_group" "rg02" {
  name = "MyAzureRGEUS002"
  location = "eastus"
}

resource "azurerm_resource_group" "rg03" {
  name = "MyAzureRGWUS001"
  location = "westus"
}