
# Create virtual network 
resource "azurerm_virtual_network" "MytestVnet01" {
  name                = "mytestvnet001"
  address_space       = ["10.10.0.0/23"]
  resource_group_name      = var.resoursedetails.name
  location                 = var.resoursedetails.location
  tags = {
    Environment  = "QC"
    "Created By" = "Admin"
    Model        = "Pipeline Test"
    project      = "MS Lab Readiness"
  }
    subnet {
    name           = "Snet001"
    address_prefix = "10.10.0.0/24"
  }  
}



# Create STG Account
resource "azurerm_storage_account" "myteststore01" {
  name                     = "myteststore01a"
  resource_group_name      = var.resoursedetails.name
  location                 = var.resoursedetails.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  public_network_access_enabled = true

  tags = {
    Environment  = "QC"
    "Created By" = "Admin"
    Model        = "Pipeline Test"
    project      = "MS Lab Readiness"
  }

}

