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
    subscription_id      = "b2744a0d-e7f7-4cea-af52-689c2e4a2c69"

  }

}


provider "azurerm" {
  features {}
  subscription_id = "b2744a0d-e7f7-4cea-af52-689c2e4a2c69"
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
  depends_on               = [azurerm_resource_group.rg]
  name                     = "stgabhi001"
  resource_group_name      = "rg-abhi-001"
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "LRS"

}
