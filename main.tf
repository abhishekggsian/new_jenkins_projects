terraform {
  required_version = "1.12.1"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.34.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-sumit1"
    storage_account_name = "stgsumit21"
    container_name       = "sumitcont21"
    key                  = "terraform.tfstate"
    subscription_id      = "3a734e32-021d-4243-89ff-c3495e6aa4da"

  }

}


provider "azurerm" {
  features {}
  subscription_id = "3a734e32-021d-4243-89ff-c3495e6aa4da"
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-abhi-001"
  location = "westus"

}
resource "azurerm_resource_group" "rg1" {
  name     = "rg-abhi-002"
  location = "westus"
}

resource "azurerm_storage_account" "stgabhi" {
     depends_on = [ azurerm_resource_group.rg]
  name                     = "stgabhi001"
  resource_group_name      = "rg-abhi-001"
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  
}